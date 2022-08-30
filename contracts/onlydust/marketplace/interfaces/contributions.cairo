%lang starknet

from starkware.cairo.common.uint256 import Uint256

from onlydust.marketplace.core.contributions.library import Contribution, ContributionId

@contract_interface
namespace IContributions:
    func new_contribution(
        id : felt, project_id : felt, contribution_count_required : felt
    ) -> (contribution : Contribution):
    end

    func delete_contribution(contribution_id : ContributionId):
    end

    func contribution(contribution_id : ContributionId) -> (contribution : Contribution):
    end

    func past_contributions(contributor_id : Uint256) -> (num_contributions : felt):
    end

    func all_contributions() -> (contributions_len : felt, contributions : Contribution*):
    end

    func all_open_contributions() -> (contributions_len : felt, contributions : Contribution*):
    end

    func assigned_contributions(contributor_id : Uint256) -> (
        contributions_len : felt, contributions : Contribution*
    ):
    end

    func assign_contributor_to_contribution(contribution_id : ContributionId, contributor_id : Uint256):
    end

    func unassign_contributor_from_contribution(contribution_id : ContributionId):
    end

    func validate_contribution(contribution_id : ContributionId):
    end

    func modify_contribution_count_required(contribution_id : ContributionId, contribution_count_required : felt):
    end

    func grant_admin_role(address : felt):
    end

    func revoke_admin_role(address : felt):
    end

    func grant_feeder_role(address : felt):
    end

    func revoke_feeder_role(address : felt):
    end
end