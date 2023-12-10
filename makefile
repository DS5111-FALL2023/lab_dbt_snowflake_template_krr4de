default:
	@cat makefile

.PHONY: env
env:
	python3 -m venv env
	. env/bin/activate; pip install --upgrade pip; pip install -r requirements.txt


.PHONY: init
init:
	. env/bin/activate; dbt init ds5111_lab_dbt_snow


.PHONY: seed
seed:
	cp sample_seed/NASA_Facilities.csv ds5111_lab_dbt_snow/seeds/
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
		dbt seed

.PHONY: seed_erd
seed_erd:
	cp lab_seed/Assignments.csv lab_seed/Courses.csv lab_seed/Instructors.csv lab_seed/LearningOutcomes.csv ds5111_lab_dbt_snow/seeds/
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
                dbt seed

.PHONY: run 
run:
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
		dbt run 

.PHONY: run_new
run_new:
	cp -r sample_model/nasa ds5111_lab_dbt_snow/models/
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
		dbt run 

.PHONY: run_erd
run_erd:
	cp -r lab_model/erd ds5111_lab_dbt_snow/models/
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
                dbt run

.PHONY: run_usecases
run_usecases:
	cp -r lab_model/usecases ds5111_lab_dbt_snow/models/
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
                dbt run

.PHONY: build 
build:
	. env/bin/activate; cd ds5111_lab_dbt_snow; \
		dbt build 

.PHONY: clean
clean:
	rm -rf ds5111_lab_dbt_snow
