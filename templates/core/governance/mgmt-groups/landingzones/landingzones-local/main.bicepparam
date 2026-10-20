using './main.bicep'

// General Parameters
param parLocations = [
  'centralindia'
  'centralindia'
]
param parEnableTelemetry = true

param landingZonesLocalConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 't4308-local'
  managementGroupParentId: 't4308-landingzones'
  managementGroupIntermediateRootName: 't4308-alz'
  managementGroupDisplayName: 't4308 Local'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Currently no policy assignments for local landing zones
// When policies are added, specify parameter overrides here
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in landing zones - local currently
}
