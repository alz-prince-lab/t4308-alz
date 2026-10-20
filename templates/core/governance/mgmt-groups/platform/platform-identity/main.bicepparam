using './main.bicep'

// General Parameters
param parLocations = [
  'centralindia'
  'centralindia'
]
param parEnableTelemetry = true

param platformIdentityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 't4308-identity'
  managementGroupParentId: 't4308-platform'
  managementGroupIntermediateRootName: 't4308-alz'
  managementGroupDisplayName: 't4308 Identity'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['2a45dae6-6576-473c-97ae-5a957a97de23']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
    // No policy assignments in platform-identity currently
}
