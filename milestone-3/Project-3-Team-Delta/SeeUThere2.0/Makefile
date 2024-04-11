#makefile for SeeUThere Application
#Team Delta - Nia Dicks, Ward Eldred, Aaron Slaven, Clare Rizzo

#Variables
ORGANIZATION = DeltaMarshallers
PROJECT_NAME = SeeUThere2.0
BUNDLE_ID = com.$(ORGANIZATION).$(NAME)
SCHEME_NAME = $(PROJECT_NAME)
XC_PROJECT = $(PROJECT_NAME).xcodeproj
XC_WORKSPACE = $(PROJECT_NAME).xcworkspace
XC_SCHEME = $(SCHEME_NAME)

#Target to Run
.PHONY: build
build: ## build the project
	xcodebuild -allowProvisioningUpdates build -project $(XC_PROJECT) -scheme $(XC_SCHEME)

.PHONY: run
run: ## Run the project
	open -a "Simulator.app"
	xcrun simctl install booted $(PROJECT_NAME).app
	xcrun simctl launch booted $(BUNDLE_ID)