GDPC                                                                            -       res://Resources/Deck/deck.json  �      w      W*�&5�O���@�lw$   res://Scenes/ArchiveProcessor.tscn  ��      �       �����UT��`��̂T    res://Scenes/BuildProcessor.tscnp�      �       ²(m���K�����|(   res://Scenes/CardEffectProcessor.tscn    �      �       �+������<gG�@    res://Scenes/CardManager.tscn   ��      �       kk&�3�-%(+w���h    res://Scenes/DeckManager.tscn   ��      �      �䒛�}(�L��    res://Scenes/EnergyManager.tscn 0�      �       W����'.+d�㽫Pz    res://Scenes/EventProcessor.tscn��            �zV�ݏ��8*���g�]   res://Scenes/GameState.tscn  �      �       p(��y<]��\:6.�/    res://Scenes/PickProcessor.tscn ��      �       hh���~H�����i�$   res://Scenes/ResearchProcessor.tscn `�      �       ��4	�7ɰ���da�"    res://Scenes/SceneHandler.tscn   �      <       �����Cv^4
]   res://Scenes/Server.tscn`�      w      𢒭j،H5:$����+(   res://Scripts/ActionProcessor.gd.remap  @5     2       ,l(�R�A����}߽�$   res://Scripts/ActionProcessor.gdc   ��      �      �ؘ��A�E�3+�H(   res://Scripts/ArchiveProcessor.gd.remap �5     3       �k�J�7����Gӟ$   res://Scripts/ArchiveProcessor.gdc  ��      �      �3����_`Wv��&�(   res://Scripts/BuildProcessor.gd.remap   �5     1       
�BeC�e���s�8
�    res://Scripts/BuildProcessor.gdc��      c      Wh��;�<�i-�A���,   res://Scripts/CardEffectProcessor.gd.remap   6     6       ��zn�LE���Zq�I(   res://Scripts/CardEffectProcessor.gdc    �            ��"���KxTg��#$   res://Scripts/CardManager.gd.remap  @6     .       ;���l�.Xo��B    res://Scripts/CardManager.gdc   @�      �      ��}�E��4�Ľ7   res://Scripts/Deck.gd.remap p6     '       �$�g-�U_G<$��>[   res://Scripts/Deck.gdc  0�      e      c��۲������OG�*$   res://Scripts/DeckManager.gd.remap  �6     .        #�$��.�?���E���    res://Scripts/DeckManager.gdc   ��      M      ��J�����)�%��$   res://Scripts/EnergyManager.gd.remap�6     0       g��rC8�����G�H    res://Scripts/EnergyManager.gdc ��            V�r�e�����x���(   res://Scripts/EventProcessor.gd.remap    7     1       �O��o�S:��ޖI-    res://Scripts/EventProcessor.gdc �      �      P�v��5fϹ��j$   res://Scripts/FlagManager.gd.remap  @7     .       mz���T^B�D�nB�:    res://Scripts/FlagManager.gdc    �      Y      �<��v1���Y�G��t    res://Scripts/GameState.gd.remapp7     ,       ����>%�	i��#i&I   res://Scripts/GameState.gdc `�      &      S�O�Z��� ]VΝ$   res://Scripts/PickProcessor.gd.remap�7     0       ���}P��i�q���    res://Scripts/PickProcessor.gdc �     �      �`,+����A]:��(   res://Scripts/PlayerContainer.gd.remap  �7     2       �H�{�^`�S�_Q��@$   res://Scripts/PlayerContainer.gdc   p
     �      |_��Y��+&{�($A(   res://Scripts/ResearchProcessor.gd.remap8     4       L���6\r�.�J��$   res://Scripts/ResearchProcessor.gdc P     
      ��օ˪�;?<,x�    res://Scripts/Server.gd.remap   P8     )       .OWs��������0�   res://Scripts/Server.gdc`     /      �d�g�.�q.w���   res://default_env.tres  �4     �       um�`�N��<*ỳ�8   res://project.binary�8     C      ���@���v�����6    {
    "0": {
        "id": 0,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_archived()",
        "effect": "add_free_action([1, 1])",
        "type_id": 3,
        "vp": 1
    },
    "1": {
        "id": 1,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_archived()",
        "effect": "add_free_action([1, 1])",
        "type_id": 3,
        "vp": 1
    },
    "2": {
        "id": 2,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_archived()",
        "effect": "add_free_action([1, 1])",
        "type_id": 3,
        "vp": 1
    },
    "3": {
        "id": 3,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_archived()",
        "effect": "add_free_action([1, 1])",
        "type_id": 3,
        "vp": 1
    },
    "4": {
        "id": 4,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_picked([2])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "5": {
        "id": 5,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_picked([0])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "6": {
        "id": 6,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_picked([3])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "7": {
        "id": 7,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_picked([1])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "8": {
        "id": 8,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_picked([1])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "9": {
        "id": 9,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_picked([3])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "10": {
        "id": 10,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_picked([0])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "11": {
        "id": 11,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_picked([2])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 1
    },
    "12": {
        "id": 12,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_built([3])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 1
    },
    "13": {
        "id": 13,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_built([0])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 1
    },
    "14": {
        "id": 14,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_built([1])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 1
    },
    "15": {
        "id": 15,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_built([2])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 1
    },
    "16": {
        "id": 16,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_built([1])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 1
    },
    "17": {
        "id": 17,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_built([2])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 1
    },
    "18": {
        "id": 18,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_built([3])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 1
    },
    "19": {
        "id": 19,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_built([0])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 1
    },
    "20": {
        "id": 20,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_energy_type([3])",
        "effect": "convert_tab([[3], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "21": {
        "id": 21,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_energy_type([2])",
        "effect": "convert_tab([[2], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "22": {
        "id": 22,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_energy_type([0])",
        "effect": "convert_tab([[0], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "23": {
        "id": 23,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_energy_type([1])",
        "effect": "convert_tab([[1], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "24": {
        "id": 24,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "has_energy_type([2])",
        "effect": "convert_tab([[2], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "25": {
        "id": 25,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "has_energy_type([3])",
        "effect": "convert_tab([[3], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "26": {
        "id": 26,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "has_energy_type([1])",
        "effect": "convert_tab([[1], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "27": {
        "id": 27,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "has_energy_type([0])",
        "effect": "convert_tab([[0], [4], [1]])",
        "type_id": 2,
        "vp": 1
    },
    "28": {
        "id": 28,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 0, 1])",
        "type_id": 1,
        "vp": 1
    },
    "29": {
        "id": 29,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 0, 1])",
        "type_id": 1,
        "vp": 1
    },
    "30": {
        "id": 30,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 0, 1])",
        "type_id": 1,
        "vp": 1
    },
    "31": {
        "id": 31,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 0, 1])",
        "type_id": 1,
        "vp": 1
    },
    "32": {
        "id": 32,
        "tier": 1,
        "cost": [
            1,
            0,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 1, 0])",
        "type_id": 1,
        "vp": 1
    },
    "33": {
        "id": 33,
        "tier": 1,
        "cost": [
            0,
            1,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 1, 0])",
        "type_id": 1,
        "vp": 1
    },
    "34": {
        "id": 34,
        "tier": 1,
        "cost": [
            0,
            0,
            1,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 1, 0])",
        "type_id": 1,
        "vp": 1
    },
    "35": {
        "id": 35,
        "tier": 1,
        "cost": [
            0,
            0,
            0,
            1
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([1, 1, 0])",
        "type_id": 1,
        "vp": 1
    },
    "36": {
        "id": 0,
        "tier": 2,
        "cost": [
            2,
            0,
            0,
            0
        ],
        "action": "has_picked([2,3])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 2
    },
    "37": {
        "id": 1,
        "tier": 2,
        "cost": [
            0,
            2,
            0,
            0
        ],
        "action": "has_picked([0,2])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 2
    },
    "38": {
        "id": 2,
        "tier": 2,
        "cost": [
            0,
            0,
            2,
            0
        ],
        "action": "has_picked([1,3])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 2
    },
    "39": {
        "id": 3,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            2
        ],
        "action": "has_picked([1,0])",
        "effect": "give_rand_energy(1)",
        "type_id": 4,
        "vp": 2
    },
    "40": {
        "id": 4,
        "tier": 2,
        "cost": [
            3,
            0,
            0,
            0
        ],
        "action": "has_built([1, 3])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 3
    },
    "41": {
        "id": 5,
        "tier": 2,
        "cost": [
            0,
            3,
            0,
            0
        ],
        "action": "has_built([0, 2])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 3
    },
    "42": {
        "id": 6,
        "tier": 2,
        "cost": [
            0,
            0,
            3,
            0
        ],
        "action": "has_built([3, 0])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 3
    },
    "43": {
        "id": 7,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            3
        ],
        "action": "has_built([2, 1])",
        "effect": "give_vp_tokens(1)",
        "type_id": 5,
        "vp": 3
    },
    "44": {
        "id": 8,
        "tier": 2,
        "cost": [
            2,
            0,
            0,
            0
        ],
        "action": "has_built([2, 1])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "45": {
        "id": 9,
        "tier": 2,
        "cost": [
            0,
            2,
            0,
            0
        ],
        "action": "has_built([2, 3])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "46": {
        "id": 10,
        "tier": 2,
        "cost": [
            0,
            0,
            2,
            0
        ],
        "action": "has_built([1, 0])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "47": {
        "id": 11,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            2
        ],
        "action": "has_built([0, 2])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "48": {
        "id": 12,
        "tier": 2,
        "cost": [
            2,
            0,
            0,
            0
        ],
        "action": "has_built([2, 3])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "49": {
        "id": 13,
        "tier": 2,
        "cost": [
            0,
            2,
            0,
            0
        ],
        "action": "has_built([3, 0])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "50": {
        "id": 14,
        "tier": 2,
        "cost": [
            0,
            0,
            2,
            0
        ],
        "action": "has_built([1, 3])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "51": {
        "id": 15,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            2
        ],
        "action": "has_built([1, 0])",
        "effect": "add_free_action([1, 1])",
        "type_id": 5,
        "vp": 2
    },
    "52": {
        "id": 16,
        "tier": 2,
        "cost": [
            3,
            0,
            0,
            0
        ],
        "action": "has_archive_built()",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 3
    },
    "53": {
        "id": 17,
        "tier": 2,
        "cost": [
            0,
            3,
            0,
            0
        ],
        "action": "has_archive_built()",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 3
    },
    "54": {
        "id": 18,
        "tier": 2,
        "cost": [
            0,
            0,
            3,
            0
        ],
        "action": "has_archive_built()",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 3
    },
    "55": {
        "id": 19,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            3
        ],
        "action": "has_archive_built()",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 3
    },
    "56": {
        "id": 20,
        "tier": 2,
        "cost": [
            2,
            0,
            0,
            0
        ],
        "action": "has_energy_type([1, 1])",
        "effect": "convert_tab([[1, 1], [4, 4], [1, 1]])",
        "type_id": 2,
        "vp": 2
    },
    "57": {
        "id": 21,
        "tier": 2,
        "cost": [
            0,
            2,
            0,
            0
        ],
        "action": "has_energy_type([0, 0])",
        "effect": "convert_tab([[0, 0], [4, 4], [1, 1]])",
        "type_id": 2,
        "vp": 2
    },
    "58": {
        "id": 22,
        "tier": 2,
        "cost": [
            0,
            0,
            2,
            0
        ],
        "action": "has_energy_type([3, 3])",
        "effect": "convert_tab([[3, 3], [4, 4], [1, 1]])",
        "type_id": 2,
        "vp": 2
    },
    "59": {
        "id": 23,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            2
        ],
        "action": "has_energy_type([2, 2])",
        "effect": "convert_tab([[2, 2], [4, 4], [1, 1]]))",
        "type_id": 2,
        "vp": 2
    },
    "60": {
        "id": 24,
        "tier": 2,
        "cost": [
            3,
            0,
            0,
            0
        ],
        "action": "has_energy_type([3])",
        "effect": "convert_tab([[3], [3], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "61": {
        "id": 25,
        "tier": 2,
        "cost": [
            0,
            3,
            0,
            0
        ],
        "action": "has_energy_type([2])",
        "effect": "convert_tab([[2], [2], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "62": {
        "id": 26,
        "tier": 2,
        "cost": [
            0,
            0,
            3,
            0
        ],
        "action": "has_energy_type([0])",
        "effect": "convert_tab([[0], [0], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "63": {
        "id": 27,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            3
        ],
        "action": "has_energy_type([1])",
        "effect": "convert_tab([[1], [1], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "64": {
        "id": 28,
        "tier": 2,
        "cost": [
            3,
            0,
            0,
            0
        ],
        "action": "has_energy_type([2])",
        "effect": "convert_tab([[2], [2], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "65": {
        "id": 29,
        "tier": 2,
        "cost": [
            0,
            3,
            0,
            0
        ],
        "action": "has_energy_type([3])",
        "effect": "convert_tab([[3], [3], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "66": {
        "id": 30,
        "tier": 2,
        "cost": [
            0,
            0,
            3,
            0
        ],
        "action": "has_energy_type([1])",
        "effect": "convert_tab([[1], [1], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "67": {
        "id": 31,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            3
        ],
        "action": "has_energy_type([0])",
        "effect": "convert_tab([[0], [0], [2]])",
        "type_id": 2,
        "vp": 3
    },
    "68": {
        "id": 32,
        "tier": 2,
        "cost": [
            3,
            0,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([2, 1, 2])",
        "type_id": 1,
        "vp": 3
    },
    "69": {
        "id": 33,
        "tier": 2,
        "cost": [
            0,
            3,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([2, 1, 2])",
        "type_id": 1,
        "vp": 3
    },
    "70": {
        "id": 34,
        "tier": 2,
        "cost": [
            0,
            0,
            3,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([2, 1, 2])",
        "type_id": 1,
        "vp": 3
    },
    "71": {
        "id": 35,
        "tier": 2,
        "cost": [
            0,
            0,
            0,
            3
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([2, 1, 2])",
        "type_id": 1,
        "vp": 3
    },
    "72": {
        "id": 0,
        "tier": 3,
        "cost": [
            5,
            0,
            0,
            0
        ],
        "action": "has_built([2, 1])",
        "effect": "give_vp_tokens(2)",
        "type_id": 5,
        "vp": 5
    },
    "73": {
        "id": 1,
        "tier": 3,
        "cost": [
            0,
            6,
            0,
            0
        ],
        "action": "has_built([2, 3])",
        "effect": "add_free_tier_build([0, 1])",
        "type_id": 5,
        "vp": 6
    },
    "74": {
        "id": 2,
        "tier": 3,
        "cost": [
            0,
            0,
            6,
            0
        ],
        "action": "has_built([1, 0])",
        "effect": "add_free_tier_build([0, 1])",
        "type_id": 5,
        "vp": 6
    },
    "75": {
        "id": 3,
        "tier": 3,
        "cost": [
            0,
            0,
            7,
            0
        ],
        "action": "has_built([1, 0])",
        "effect": "add_free_action([3, 1])",
        "type_id": 5,
        "vp": 7
    },
    "76": {
        "id": 4,
        "tier": 3,
        "cost": [
            7,
            0,
            0,
            0
        ],
        "action": "has_built([2, 3])",
        "effect": "add_free_action([3, 1])",
        "type_id": 5,
        "vp": 7
    },
    "77": {
        "id": 5,
        "tier": 3,
        "cost": [
            5,
            0,
            0,
            0
        ],
        "action": "has_archive_built()",
        "effect": "give_vp_tokens(2)",
        "type_id": 5,
        "vp": 5
    },
    "78": {
        "id": 6,
        "tier": 3,
        "cost": [
            0,
            5,
            0,
            0
        ],
        "action": "has_archive_built()",
        "effect": "give_vp_tokens(2)",
        "type_id": 5,
        "vp": 5
    },
    "79": {
        "id": 7,
        "tier": 3,
        "cost": [
            6,
            0,
            0,
            0
        ],
        "action": "has_built_tier([1])",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 6
    },
    "80": {
        "id": 8,
        "tier": 3,
        "cost": [
            4,
            0,
            0,
            0
        ],
        "action": "has_archived()",
        "effect": "give_vp_tokens(1)",
        "type_id": 3,
        "vp": 4
    },
    "81": {
        "id": 9,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            6
        ],
        "action": "has_built_tier([1])",
        "effect": "add_free_action([1, 2])",
        "type_id": 5,
        "vp": 6
    },
    "82": {
        "id": 10,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            4
        ],
        "action": "has_archived()",
        "effect": "give_vp_tokens(1)",
        "type_id": 3,
        "vp": 4
    },
    "83": {
        "id": 11,
        "tier": 3,
        "cost": [
            0,
            4,
            0,
            0
        ],
        "action": "has_archived()",
        "effect": "give_rand_energy(3)",
        "type_id": 3,
        "vp": 4
    },
    "84": {
        "id": 12,
        "tier": 3,
        "cost": [
            0,
            0,
            4,
            0
        ],
        "action": "has_archived()",
        "effect": "give_rand_energy(3)",
        "type_id": 3,
        "vp": 4
    },
    "85": {
        "id": 13,
        "tier": 3,
        "cost": [
            0,
            5,
            0,
            0
        ],
        "action": "has_built([3, 0])",
        "effect": "add_free_action([0, 1])",
        "type_id": 5,
        "vp": 5
    },
    "86": {
        "id": 14,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            4
        ],
        "action": "has_built([2, 1])",
        "effect": "add_free_action([0, 1])",
        "type_id": 5,
        "vp": 4
    },
    "87": {
        "id": 15,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            5
        ],
        "action": "has_built([0, 2])",
        "effect": "give_vp_tokens(2)",
        "type_id": 5,
        "vp": 5
    },
    "88": {
        "id": 16,
        "tier": 3,
        "cost": [
            4,
            0,
            0,
            0
        ],
        "action": "has_energy_type([4])",
        "effect": "convert_tab([[4], [4], [1]])",
        "type_id": 2,
        "vp": 4
    },
    "89": {
        "id": 17,
        "tier": 3,
        "cost": [
            0,
            4,
            0,
            0
        ],
        "action": "has_energy_type([4])",
        "effect": "convert_tab([[4], [4], [1]])",
        "type_id": 2,
        "vp": 4
    },
    "90": {
        "id": 18,
        "tier": 3,
        "cost": [
            5,
            0,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_archive_build(1)",
        "type_id": 1,
        "vp": 5
    },
    "91": {
        "id": 19,
        "tier": 3,
        "cost": [
            0,
            0,
            5,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_archive_build(1)",
        "type_id": 1,
        "vp": 5
    },
    "92": {
        "id": 20,
        "tier": 3,
        "cost": [
            0,
            0,
            6,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_research_build(1)",
        "type_id": 1,
        "vp": 6
    },
    "93": {
        "id": 21,
        "tier": 3,
        "cost": [
            0,
            6,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_research_build(1)",
        "type_id": 1,
        "vp": 6
    },
    "94": {
        "id": 22,
        "tier": 3,
        "cost": [
            0,
            4,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "disable_action(3)",
        "type_id": 1,
        "vp": 8
    },
    "95": {
        "id": 23,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            4
        ],
        "action": "is_passive()",
        "effect": "disable_action(3)",
        "type_id": 1,
        "vp": 8
    },
    "96": {
        "id": 24,
        "tier": 3,
        "cost": [
            0,
            0,
            4,
            0
        ],
        "action": "is_passive()",
        "effect": "disable_action(0)",
        "type_id": 1,
        "vp": 7
    },
    "97": {
        "id": 25,
        "tier": 3,
        "cost": [
            4,
            0,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "disable_action(0)",
        "type_id": 1,
        "vp": 7
    },
    "98": {
        "id": 26,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            5
        ],
        "action": "has_energy_type([2, 1])",
        "effect": "convert_tab([[2, 1], [2, 1], [2, 2]])",
        "type_id": 2,
        "vp": 5
    },
    "99": {
        "id": 27,
        "tier": 3,
        "cost": [
            7,
            7,
            7,
            7
        ],
        "action": "is_passive()",
        "effect": "getPoints(player_VP)",
        "type_id": 1,
        "vp": 0
    },
    "100": {
        "id": 28,
        "tier": 3,
        "cost": [
            7,
            7,
            7,
            7
        ],
        "action": "is_passive()",
        "effect": "getPoints(player_VP)",
        "type_id": 1,
        "vp": 0
    },
    "101": {
        "id": 29,
        "tier": 3,
        "cost": [
            7,
            7,
            7,
            7
        ],
        "action": "is_passive()",
        "effect": "getPoints(player_energy)",
        "type_id": 1,
        "vp": 0
    },
    "102": {
        "id": 30,
        "tier": 3,
        "cost": [
            7,
            7,
            7,
            7
        ],
        "action": "is_passive()",
        "effect": "getPoints(player_energy)",
        "type_id": 1,
        "vp": 0
    },
    "103": {
        "id": 31,
        "tier": 3,
        "cost": [
            0,
            0,
            5,
            0
        ],
        "action": "has_energy_type([3, 0])",
        "effect": "convert_tab([[3, 0], [3, 0], [2, 2]])",
        "type_id": 2,
        "vp": 5
    },
    "104": {
        "id": 32,
        "tier": 3,
        "cost": [
            0,
            5,
            0,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_tier_build([1, 1])",
        "type_id": 1,
        "vp": 5
    },
    "105": {
        "id": 33,
        "tier": 3,
        "cost": [
            0,
            0,
            5,
            0
        ],
        "action": "is_passive()",
        "effect": "reduce_tier_build([1, 1])",
        "type_id": 1,
        "vp": 5
    },
    "106": {
        "id": 34,
        "tier": 3,
        "cost": [
            0,
            0,
            4,
            0
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([4, 0, 0])",
        "type_id": 1,
        "vp": 4
    },
    "107": {
        "id": 35,
        "tier": 3,
        "cost": [
            0,
            0,
            0,
            4
        ],
        "action": "is_passive()",
        "effect": "upgrade_capacities([4, 0, 0])",
        "type_id": 1,
        "vp": 4
    },
    "108": {
        "id": 0,
        "tier": 0,
        "cost": [
            0,
            0,
            0,
            0
        ],
        "action": "has_archived()",
        "effect": "give_rand_energy(1)",
        "type_id": 3, 
        "vp": 0
    }
}
  [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/ArchiveProcessor.gd" type="Script" id=1]

[node name="ArchiveProcessor" type="Node"]
script = ExtResource( 1 )
             [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/BuildProcessor.gd" type="Script" id=1]

[node name="BuildProcessor" type="Node"]
script = ExtResource( 1 )
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/CardEffectProcessor.gd" type="Script" id=1]

[node name="CardEffectProcessor" type="Node"]
script = ExtResource( 1 )
       [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/CardManager.gd" type="Script" id=1]

[node name="CardManager" type="Node"]
script = ExtResource( 1 )
       [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scripts/DeckManager.gd" type="Script" id=1]
[ext_resource path="res://Scenes/CardManager.tscn" type="PackedScene" id=2]

[node name="DeckManager" type="Node"]
script = ExtResource( 1 )

[node name="CardManager" parent="." instance=ExtResource( 2 )]
[connection signal="removed_card" from="CardManager" to="." method="_on_CardManager_removed_card"]
        [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/EnergyManager.gd" type="Script" id=1]

[node name="EnergyManager" type="Node"]
script = ExtResource( 1 )
   [gd_scene load_steps=7 format=2]

[ext_resource path="res://Scenes/PickProcessor.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/EventProcessor.gd" type="Script" id=2]
[ext_resource path="res://Scenes/ArchiveProcessor.tscn" type="PackedScene" id=3]
[ext_resource path="res://Scenes/BuildProcessor.tscn" type="PackedScene" id=4]
[ext_resource path="res://Scenes/ResearchProcessor.tscn" type="PackedScene" id=5]
[ext_resource path="res://Scenes/CardEffectProcessor.tscn" type="PackedScene" id=6]

[node name="EventProcessor" type="Node"]
script = ExtResource( 2 )

[node name="ArchiveProcessor" parent="." instance=ExtResource( 3 )]

[node name="PickProcessor" parent="." instance=ExtResource( 1 )]

[node name="BuildProcessor" parent="." instance=ExtResource( 4 )]

[node name="ResearchProcessor" parent="." instance=ExtResource( 5 )]

[node name="CardEffectProcessor" parent="." instance=ExtResource( 6 )]
[connection signal="card_built" from="BuildProcessor" to="CardEffectProcessor" method="_on_BuildProcessor_card_built"]
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/GameState.gd" type="Script" id=1]

[node name="GameState" type="Node"]
script = ExtResource( 1 )
           [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/PickProcessor.gd" type="Script" id=1]

[node name="PickProcessor" type="Node"]
script = ExtResource( 1 )
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Scripts/ResearchProcessor.gd" type="Script" id=1]

[node name="ResearchProcessor" type="Node"]
script = ExtResource( 1 )
           [gd_scene format=2]

[node name="SceneHandler" type="Node"]
    [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scripts/Server.gd" type="Script" id=1]
[ext_resource path="res://Scenes/GameState.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/EventProcessor.tscn" type="PackedScene" id=5]

[node name="Server" type="Node"]
script = ExtResource( 1 )

[node name="GameState" parent="." instance=ExtResource( 2 )]

[node name="EventProcessor" parent="." instance=ExtResource( 5 )]
[connection signal="game_ready" from="GameState" to="." method="_on_GameState_game_ready"]
[connection signal="players_loaded" from="GameState" to="." method="_on_GameState_players_loaded"]
         GDSC         4   �      ���Ӷ���   ��������������Ķ   ��������Ҷ��   �������������ض�   ����������������Ķ��   ����ٶ��   ���������������ض���   ���������������Ķ���   ����������������¶��   ��������������������¶��   ����������ض   �������������������������ض�   ���������ض�   �����Ķ�   ��������������ض   ������Ҷ   ����������������ض��   ��������������Ѷ   ��������������ض   �����������������Ŷ�   ��������������ض   ��������������������¶��                                                                                     	      
                           $      .      9      <      ?      @      A      B      K      S      W      `      i      t      v      }      ~      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   3YYY2�  YY;�  YYY0�  P�  R�  QV�  -YYYY0�  P�  QX�  V�  ;�  �  T�	  P�  Q�  &�  T�
  �  V�  .�  �  .�  YYYY0�  P�  QX=V�  ;�
  �  P�  Q�  &�
  V�  �  T�  P�  T�  Q�  �  T�  P�  T�  Q�  �  T�  P�  T�  R�  Q�  .�  �
  �  P�  Q�  �  &�  T�	  P�  Q
V�  �  T�  P�  T�  R�  R�  Q�  �  T�  P�  T�  R�  QYYYY0�  P�  QX�  V�  &�  T�
  V�  �  T�  P�  Q�  .�  �  .�  YYYY0�  P�  QX�  V�  ;�  �  T�	  P�  Q�  &�  V�  �  �  �  �  T�  P�  R�  Q�  .�  �  .�  Y`  GDSC      	   *   �      ��������������Ķ   �������������ض�   ���������������Ķ���   ��������ض��   ���������������Ҷ���   ��Ŷ   ���������������ض���   ����������������Ӷ��   �������������������������ض�   ������Ӷ   ���������������Ӷ���   ��������������Ӷ   ����������Ķ   �������Ӷ���   �����������������Ҷ�   �����Ķ�   ���������������Ҷ���   ������Ҷ   ����������������   ����������������Ӷ��   ���������������Ѷ���   ���������������Ŷ���      owner_id                   status        CardManager              You have no archive space         archive       You can't archive anymore                                        "      #      *   	   1   
   6      =      @      G      N      U      X      [      \      ]      h      p      ~      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   3YYY0�  P�  R�  V�  QX�  V�  &�  P�  Q�  T�  PQV�  .�  �  �  &�  P�  QV�  &�  P�  QV�  �  P�  Q�  �	  P�  R�  Q�  .�  �  '�
  P�  QV�  &�  P�  QV�  �	  P�  R�  Q�  .�  �  .�  YYY0�	  P�  R�  V�  QV�  ;�  �  L�  M�  �  T�  P�  QT�  P�  R�  Q�  �  T�  P�  R�  R�  T�  QYYY0�
  P�  V�  QX�  V�  .�  L�  M�  T�  YYY0�  P�  QX�  V�  &�  T�  PQ
�  V�  �  T�  P�  T�  R�  Q�  .�  �  .�  YYY0�  P�  QX�  V�  &�  T�  L�  MV�  �  T�  P�  T�  R�  Q�  .�  �  .�  Y`        GDSC   -      p        ��������������Ķ   ���������¶�   ��������ض��   �������������ض�   ���������������Ķ���   ����������Ķ   ������������������Ҷ   ��������������Ҷ   ���������������ض���   ��������������������Ҷ��   �������������������������ض�   ����Ҷ��   ����������ڶ   �������������Ҷ�   ��Ŷ   ������Ҷ   �����Ķ�   ���������������Ѷ���   ���Ķ���   ����������ض   ��������������Ӷ   �����������������Ŷ�   ��������������Ѷ   ����������Ķ   �������Ӷ���   ���������������Ҷ���   ���������������Ҷ���   ������������¶��   ����������������   ����������������Ҷ��   ����������Ӷ   ������������Ӷ��   ���������Ӷ�   �������������¶�   ������������϶��   ���������������������¶�    ����������������������������¶��   �������������Ӷ�   �������������¶�   ����������������   ����������������϶��   ��ڶ   ����Ŷ��   ������������Ķ��   ����������������������Ķ             tier         
   card_built              owner_id   !   You are not the owner of the card      
   build_tier               status               CardManager       You can't afford this card        archive       research      excess_energy         energy        cost                         
                        #   	   &   
   '      5      <      C      L      Q      X      _      b      i      r      y      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +   (  ,   )  -   7  .   D  /   E  0   F  1   S  2   [  3   b  4   p  5   }  6   ~  7     8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M      N     O     P     Q   '  R   .  S   3  T   <  U   A  V   J  W   K  X   T  Y   U  Z   V  [   W  \   h  ]   y  ^   }  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o     p   3YYYB�  P�  QYYY0�  P�  R�  V�  QX�  V�  &�  P�  R�  QV�  .�  �  &�  P�  R�  L�  M�  QV�  �  P�  R�  Q�  '�  P�  QV�  &�	  P�  R�  QV�  �
  P�  Q�  �  P�  R�  Q�  �  P�  R�  Q�  .�  �  '�  P�  QV�  &�	  P�  R�  QV�  �  P�  R�  Q�  �  P�  R�  Q�  .�  �  .YYY0�  P�  R�  V�  QX�  V�  &�  T�  P�  Q�  L�  M�  T�  V�  �  T�  P�  T�  R�  Q�  .�  .�  YYY0�  P�  R�  V�  QX�  V�  .�  T�  L�  ML�  M�  YYY0�  P�  R�  V�  QX=V�  ;�  �  L�	  M�  �  T�  L�  ML�  L�  M�  M�  �  &�  T�  L�  ML�  L�  M�  M
�  V�  �  T�  P�  T�  R�
  R�  Q�  �  T�  P�  T�  R�
  Q�  �  �  T�  P�  QT�  P�  R�  Q�  �  T�  P�  R�  R�  T�  QYYY0�  P�  R�  V�  QX=V�  ;�  �  L�	  M�  �  P�  R�  Q�  �  T�  P�  QT�  P�  R�  Q�  �  T�  P�  R�  R�  T�  QYYY0�  P�  V�  QX�  V�  .�  L�	  M�  T�  YYYY0�  P�  R�  V�  QX�  V�  ;�  �  T�  P�  QT�  P�  Q�  ;�   �!  P�  R�  Q�  ;�"  �  T�#  P�  Q�  T�$  P�  Q�  �  .�"  �   YYY0�	  P�  R�  V�  QX�  V�  &�  P�  R�  QV�  .�  �  �  T�  P�  T�  R�  Q�  .YYYY0�!  P�  R�  V�  QX�  V�  ;�   �%  P�  Q�  �  �   �  T�&  L�  ML�  L�  M�  M�  /�  L�	  MV�  �  T�'  V�  �   �  T�&  L�  M�  �  T�  V�  �   �  T�&  L�  MY�  .�   &�   �  (�  YYYY0�(  P�  R�   V�  R�  V�  QX�  V�  )�)  �K  P�  T�*  L�  ML�  MQV�  �   �  �  �  T�*  L�  ML�  M�  �  .�   &�   �  (�  YYYY0�  P�  R�  V�  QX=V�  ;�  �  T�  P�  QT�  P�  Q�  ;�   �!  P�  R�  Q�  �   �(  P�  R�   R�  Q�  &�   �  V�  �  T�*  L�  ML�  M�   �  �+  T�,  P�  R�   QYYY0�%  P�  V�  QX�  V�  ;�  �  T�  P�  QT�  P�  Q�  .�  L�  ML�  MY`             GDSC   O       �   �     ���Ӷ���   �����������򶶶�   �����������򶶶�   �����������򶶶�   ��������򶶶   ����������   ������������򶶶   ��������������¶   ���������������Ķ���   ��������ض��   ����������Ҷ   ��������������Ҷ   ����������Ӷ   �����������������¶�   ���������¶�   ������������Ҷ��   �����Ķ�   �������������������Ҷ���   ������Ҷ   ���Ҷ���   ����Ŷ��   �������������ն�   ����������Ѷ   ���������¶�   ����¶��   ��������Ӷ��   ����������Ŷ   ��������������¶   ������������¶��   ���ڶ���   �����������Ҷ���   �����������¶���   ����������ն   ������������Ŷ��   ���������������Ķ���   ������������������Ҷ   �������Ӷ���   ����������������Ķ��   ���������������϶���   ����¶��   ������������Ķ��   ���������������������Ӷ�   ������������������Ӷ   ���������������Ӷ���   ��ڶ   ����������Ӷ   ������������Ķ��   ������������������Ķ   �������������Ŷ�   ����������Զ   ����������Ķ   �����������������Զ�   �������������϶�   ������ڶ   �����¶�   �����¶�   �������������������Ҷ���   ���Ӷ���   �����������������Ŷ�   �����Ŷ�   �������������������Ҷ���   �������������¶�   ��������������������Ҷ��   ����������������Ҷ��   �������������ض�   ��������Ҷ��   �����ض�   ���������¶�   ����������������Ѷ��   ���������������Ŷ���   ��������������ض   ������������Ŷ��   ���������Ѷ�   ����������ض   �����������������Ŷ�   ��������������Ѷ   ������������������Ҷ   ����򶶶    ����������������������������¶��                                                       gizmos        id        tier          usable        (                )         type_id       action        effect     	   GameState         energy     	   vp_tokens         excess_energy      #    does not have required energy type    
   max_energy        max_archive       max_research      archive       research      You are doing free %s          You are doing free tier %d build   
   build_tier                                                      	       
   $      &      '      (      5      ?      @      P      U      \      g      j      m      n      o      z      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /   &  0   '  1   (  2   )  3   6  4   A  5   D  6   E  7   L  8   ]  9   `  :   l  ;   o  <   p  =   q  >   z  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S     T     U      V   !  W   *  X   3  Y   ?  Z   @  [   A  \   L  ]   Z  ^   c  _   d  `   e  a   f  b   g  c   r  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s     t     u     v   !  w   "  x   #  y   .  z   <  {   H  |   T  }   `  ~   a     b  �   c  �   n  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �     �     �     �     �     �   #  �   1  �   @  �   A  �   F  �   M  �   N  �   Z  �   j  �   u  �   v  �   w  �   x  �   y  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YYY>N�  �  R�  �  �  R�  �  �  R�  �  �  R�  �  �  R�  �  �  YOYYY0�  P�  R�	  V�  QX�  V�  ;�
  �  P�  R�	  Q�  �  &�
  �  P�
  Q�  P�  R�
  QV�  �  P�
  Q�  �  P�  R�
  Q�  �  T�  P�
  R�  T�  Q�  .�  �  .�  YYY0�  P�  R�	  V�  QV�  )�  �  T�  L�  MV�  &�	  L�	  M�  L�	  M�	  L�
  M�  L�
  MV�  .�  �  .�  YYY0�  P�  R�	  V�  QX=V�  )�  �  T�  L�  MV�  &�	  T�R  PQ�  T�R  PQV�  �  L�  M�  YYY0�  P�  V�  QV�  ;�  �  T�  P�  Q�  ;�  �  L�  M�  ;�  �  LMT�  P�  QL�  M�  �  �H  P�  Q�  .L�  R�  MYYY0�  P�	  V�  QX�  V�  .�	  L�  M�	  L�  M�  YYYY0�  P�  R�	  V�  QX�  V�  ;�  �  P�	  L�  MQ�  ;�  �  �  &�  LMV�  �  �  T�  P�  L�  MR�  LMQ�  (V�  �  �  T�  P�  L�  MQ�  .�  YYY0�  P�	  V�  QV�  .�	  L�  M�  YYY0�  P�	  V�  QX=V�  ;�  �	  L�  MT�  P�  Q�  ;�   �  L�  M�  ;�!  �  LMT�  P�  QL�  M�  �  &�!  T�"  PQV�  �!  �  P�!  Q�  (V�  �!  �H  P�!  QY�  &�	  L�  M�  V�  �  T�#  P�  T�$  P�  QT�%  PQR�	  QY�  �  P�   R�!  QYYY0�&  P�'  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  ;�*  �(  T�+  PQ�  �'  �'  &�'  	�*  (�*  �  �  )�,  �K  P�'  QV�  ;�-  �.  T�/  PQ�  �(  T�  L�  ML�-  MYYY0�0  P�'  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �(  T�  L�  M�'  YYYYY0�1  P�2  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �  T�3  P�(  T�  R�2  QYYYYY0�4  P�5  V�  R�6  V�  R�7  V�  QV�  ;�(  �  T�$  P�  QT�)  PQ�  �  &�(  T�  L�  ML�5  M�  V�  �(  T�  L�  ML�5  M�  �(  T�  L�  ML�6  M�7  �  �  T�8  P�(  T�  R�(  T�  Q�  '�(  T�  L�  ML�5  M�  V�  �(  T�  L�  ML�5  M�  �(  T�  L�  ML�6  M�7  �  �  T�8  P�(  T�  R�(  T�  Q�  (V�  �?  P�(  T�9  �  QYYY0�:  P�;  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �(  T�  L�  M�;  L�  M�  �(  T�  L�  M�;  LM�  �(  T�  L�  M�;  L�  MYYYY0�<  P�7  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �(  T�=  L�  M�7  YYYY0�>  P�7  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �(  T�=  L�  M�7  YYYYYY0�?  P�;  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  �(  T�=  L�
  ML�;  L�  MM�;  LMYYYY0�@  P�A  V�  QX=V�  ;�(  �  T�$  P�  QT�)  PQ�  ;�B  �C  PQT�D  P�A  Q�  �(  T�E  L�B  M�  �  �  T�@  P�B  R�(  T�  QYYYYY0�F  P�;  V�  QV�  ;�(  �  T�$  P�  QT�)  PQ�  ;�B  �C  PQT�D  P�;  L�  MQ�  �  ;�G  �  �  ;�H  �G  �B  �  �  �(  T�I  L�B  M�;  LM�  �  T�J  P�(  T�  R�B  R�;  L�  MQ�  �  T�K  P�(  T�  R�H  QYYYYY0�L  P�;  V�  QV�  ;�(  �  T�$  P�  QT�)  PQ�  ;�A  �C  PQT�M  �  ;�B  �C  PQT�D  P�A  QY�  ;�G  �  �  ;�H  �G  P�;  L�  MQY�  �(  T�I  L�  ML�;  L�  MM�;  LM�  �  T�J  P�(  T�  R�B  R�A  Q�  �  T�K  P�(  T�  R�H  QYYY0�N  P�	  V�  QV�  &�  P�	  QV�  �  P�	  QY`               GDSC   #      :   g     ���Ӷ���   ��������Ӷ��   ���   �����ᶶ   ���󶶶�   ��������   �����������Ҷ���   ��������ض��   �����������������Ҷ�   ���������������Ķ���   �������������Ķ�   ������Ҷ   ����������Ķ   ��������������Ҷ   ����������ڶ   ��������������Ŷ   ���������¶�   ����������������   ����Ŷ��   �����Ҷ�   ���������������Ҷ���   ��Ŷ   ������������������Ӷ   �������������������¶���   �����������¶���   ����������������   ��������������Ӷ   ���Ҷ���   ����Ӷ��   ��������Ҷ��   �����Ŷ�   �����Ӷ�   ������������Ӷ��   ���Ӷ���   �����Ŷ�      removed_card      archive       owner_id            gizmos        id        tier      status        usable        cost                                                          	      
   '      0      7      >      I      J      V      W      X      e      f      o      v      }      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )     *     +     ,     -     .   %  /   &  0   '  1   6  2   =  3   >  4   ?  5   J  6   T  7   ^  8   a  9   e  :   3YYY>�  N�  R�  R�  R�  OYYYB�  P�  QYYY0�  P�	  R�  V�  QX=V�  �
  P�  R�	  T�  Q�  �  T�  P�	  Q�  �  PR�  Q�  �  P�  R�  PQT�  Q�  �  �	  T�  L�  MT�  P�  QYYY0�  P�	  R�  V�  QX=V�  �  &�  T�  P�  QV�  �  P�	  R�  Q�  �  T�  P�	  Q�  (V�  �
  P�  R�	  T�  QY�  �  T�  P�	  R�  Q�  �  PR�  Q�  �  P�  R�  PQT�  Q�  �  P�  R�  Q�  �  �	  T�  L�  MT�  P�  QYYY0�  P�	  R�  V�  QX=V�  )�  �	  T�  L�  MV�  &�  L�  M�  L�  M�  L�  M�  L�  MV�  �	  T�  L�  MT�  P�  QYYY0�
  P�  V�  R�  V�  QX=V�  �  L�  M�  YYY0�  P�  V�  R�  V�  QX=V�  �  L�  M�  YYY0�  P�  V�  R�  V�  QX=V�  �  L�  M�  YYY0�   P�  V�  QX�  V�  )�!  �  T�"  PQV�  &�  L�	  ML�!  MV�  .�!  �  .�
  Y`              GDSC            T      ���Ӷ���   ���ݶ���   ��������޶��   ���ݶ���   ����¶��   ��������Ӷ��   ���Ӷ���   ����   ���ض���   ���򶶶�   ��������ض��   ��������   ����Ӷ��   ����������¶   ����Ӷ��   �����¶�   �������ݶ���      res://Resources/Deck/deck.json                                                      	      
          +      9      ?      E      F      G      O      R      3YY2�  YY;�  Y;�  YYY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  R�  T�	  Q�  ;�
  �  T�  P�  T�  PQQ�  �  T�  PQ�  �  �
  T�  YYY0�  PQX�  V�  .�  Y`           GDSC   >      �   u     ���Ӷ���   ���ݶ���   ���������Ŷ�   �������������Ŷ�   ���������Ҷ�   ����������������   ����������������   ����������������   ����������������   ����������������󶶶   ������������򶶶   ����¶��   �������ܶ���   ���ݶ���   ����   �������ݶ���   �������ݶ���   ����������������Ŷ��   �������������Ҷ�   ��������ض��   ��������������Ҷ   ���������������ݶ���   ��������Ķ��   �����Ҷ�   ��������������������ݶ��   ��������ݶ��   ����Ӷ��   �¶�   ���Ӷ���   ���Ķ���   ����¶��   ��¶   �����������Ҷ���   ����������������Ҷ��   ��������ݶ��   ������������ض��   ���������������Ҷ���   ����������Ķ   ��������������Ŷ   �����Ķ�   �������������������Ҷ���   �����������������Ķ�   �����������Ҷ���   ����������������Ҷ��   �����������Ҷ���   �����������Ҷ���   �������������������¶���   ���������������¶���   �������������Ҷ�   ���������������Ķ���   �������������Ҷ�   ��������Ӷ��   �������������Ķ�   ������Ҷ   ��������������Ӷ   ����Ŷ��   �����������������Ŷ�   ��������������¶   ��������������϶   �������������Ŷ�   ��ڶ    ���������������������������Ҷ���         l                                                   tier      id                                           $         gizmos        status                                 
                     	      
         "      '      (      )      /      8      @      M      Z      ^      e      f      g      h      s      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1   $  2   %  3   &  4   '  5   6  6   7  7   ;  8   A  9   E  :   N  ;   h  <   t  =   u  >   v  ?   w  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q     R     S     T     U     V     W   !  X   %  Y   0  Z   5  [   6  \   7  ]   F  ^   M  _   N  `   O  a   Z  b   c  c   d  d   e  e   m  f   {  g   �  h   �  i   �  j   �  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y     z     {     |     }   "  ~   +     ,  �   4  �   >  �   E  �   F  �   I  �   J  �   K  �   R  �   Y  �   \  �   a  �   d  �   i  �   s  �   3YYY;�  Y;�  Y;�  Y;�  YYY>N�  R�  R�  R�  OY:�	  Y:�
  �  YYY0�  PQV�  ;�  �  T�  PQ�  �  �  T�  PQ�  �  LLMRLMRLMM�  �  LLMRLMRLMM�  �  PQ�  �  P�  R�	  QYYYY0�  P�  V�  QX�  V�  ;�  L�  R�  R�  R�  R�  R�  M�  &�  L�	  M�  �  L�
  M�  V�  .�  �  .�  YYYY0�  P�  V�  QX=V�  ;�  �  L�	  M�  �  &�  P�  QV�  �  L�  MT�  P�  L�
  MQYYY0�  P�  V�  QX=V�  ;�  �  L�	  M�  �  �  L�  MT�  P�  L�
  MQYYYY0�  PQX=V�  )�  �K  P�  T�  PQ�  QV�  ;�  �  L�>  P�  QM�  �  P�  Q�  �  �  L�>  P�  T�  PQ�  QMYYYY0�  P�  V�  R�  V�  QX=V�  �  �%  PQ�  &�  �  V�  �  �  �  )�  �K  P�  QV�  ;�   �  L�  �  ML�&  PQ�  L�  �  MT�  PQM�  �  L�  �  MT�  P�   QYYYY0�!  P�  V�  QX=V�  ;�   �  L�  ML�&  PQ�  L�  MT�  PQM�  �  L�  MT�  P�   Q�  �  L�  MT�"  P�   Q�  �  ;�  �#  P�$  P�   R�  QQ�  W�%  T�&  P�  R�  Q�  �'  T�!  P�  QYYY0�(  P�  V�  QX=V�  ;�  �  L�	  M�  �  �  L�  MT�  P�  L�
  MQYYYY0�)  P�  V�  QX=V�  ;�*  �  P�  �  Q�  )�  �K  P�*  QV�  �!  P�  QYYYY0�+  PQX=V�  �%  PQ�  )�  �K  P�  R�  QV�  �)  P�  QYYY0�$  P�,  V�  R�  V�  QX�  V�  .�,  �  �  YYY0�#  P�-  V�  QX�  V�  .�  L�>  P�-  QMYYY0�.  PQX�  V�  ;�/  LLMRLMRLMM�  )�  �K  P�  R�  QV�  �/  L�  M�  L�  MT�  PQ�  .�/  YYY0�0  P�1  QX�  V�  ;�2  �  T�3  P�  Q�  �  W�%  T�4  P�2  R�1  T�5  Q�  W�%  T�&  P�2  R�  Q�  W�%  T�6  P�2  R�  Q�  �1  T�7  L�  MT�  P�2  Q�  �  .�2  YYY0�8  P�9  V�  R�  V�  QX�  V�  ;�:  �  L�  MT�3  P�  Q�  ;�;  LM�  �  )�<  �K  P�9  QV�  ;�   �:  L�&  PQ�:  T�  PQM�  �:  T�  P�   Q�  �   �$  P�   R�  Q�  �  ;�  �#  P�   Q�  W�%  T�&  P�  R�  Q�  �;  T�  P�  QY�  .�;  YYY0�=  P�  QV�  /�  L�  MV�  �  V�  �  P�  Q�  �  V�  �(  P�  Q�  �!  P�  L�	  M�  QY`   GDSC   $      N   i     ���Ӷ���   ���������������Ķ���   ������������   ���������������   �������������ᶶ   ���   �����ᶶ   ���󶶶�   ��������   ���������ﶶ   ����¶��   ����������������������������   ��¶   �����Ҷ�   ��������������������   ����������϶   ������������������Ķ   �����Ķ�   ������������������������   ����������Ӷ   ��������������������   �����������������۶�   �������������Ӷ�   ���Ӷ���   ����Ӷ��   ����������������������Ķ   �����¶�   ��ڶ   �����������������϶�   ���������������Ķ���   ����������Ķ   ������������Ҷ��   ���������϶�   ��۶   ����¶��   ������������������¶                                                  
                        "   	   #   
   $      1      2      3      9      =      >      ?      @      H      Q      X      _      f      m      n      o      p      x            �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9     :     ;     <     =     >   '  ?   .  @   3  A   7  B   8  C   9  D   :  E   B  F   G  G   M  H   Q  I   T  J   U  K   V  L   a  M   g  N   3YYY;�  LMY;�  LRRRMYY:�  �  Y:�  �  YYY>N�  R�  R�  R�  R�	  OYYY0�
  PQV�  �  PQYYYY0�  PQX=V�  )�  �K  P�  QV�  �  T�  P�  Q�  �  T�  P�  Q�  �  T�  P�  Q�  �  T�  P�  QYYYY0�  PQX=V�  ;�  �  PQ�  �  L�  M�  �  �  T�  P�  QYYY0�  P�  V�  QX=V�  �  L�  M�  YYYY0�  PQX=V�  *�  PQ�  V�  �  PQYYYYY0�  PQX�  V�  ;�  �  T�  PQ�  &�  
V�  .�  �  ;�  �  L�&  PQ�  M�  �  T�  P�  Q�  .�  YYYY0�  P�  V�  R�  V�  QX=V�  )�  �K  P�  QV�  �  T�  P�  QYYY0�  P�  R�  V�  QX=V�  �  T�  P�  R�  Q�  �  T�   P�  Q�  �  P�  Q�  �  PQYYYY0�  PQX�  V�  ;�!  �  )�"  �  V�  �!  �"  �  .�!  YYY0�#  P�  V�  QX�  V�  .�  L�  MY`          GDSC          5   	     ���Ӷ���   �������   ��������   ����򶶶   ������������   �����������   �����������Ӷ���   �����϶�   ���������������Ķ���   ��������Ҷ��   ������������Ķ��   �������������Ķ�   ����������������Ķ��   ������������¶��   ���������������Ķ���   ���ٶ���   �������ݶ���   �����Ķ�   �������Ӷ���   ����������������Ķ��   ������Ҷ   ���������������Ѷ���   ������������������Ķ   ��������������¶   ���������������Ķ���   �������������������Ķ���   �������������ض�   �������������������Ҷ���   ����Ŷ��   �������������������Ҷ���   ����Ŷ��   ����������������Ѷ��      archive       pick      build         research   	   GameState         It is not your turn                                                  !   	   &   
   *      ,      -      .      4      ;      B      I      P      Q      R      _      b      c      t            �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3     4     5   3YYY>N�  R�  R�  R�  R�  OYY;�  N�  �  VR�  �  V�  R�  �  V�  R�  �  V�  YOYYY0�  PQV�  W�  T�	  �  �  W�
  T�	  �  �  W�  T�	  �  �  W�  T�	  �  YYY0�  P�  R�	  V�  R�  QV�  ;�  Y�  &�  T�  P�  QT�  PQ�  T�  V�  �  T�  P�  T�  R�  Q�  .Y�  &�	  �  V�  �  W�  T�  P�  R�  Q�  (V�  ;�  �  P�	  Q�  �  �  T�  P�  R�  Q�  �  &�  V�  �  T�  P�  T�  R�  T�  Q�  �  T�  P�  T�  R�  T�  QYYY0�  P�	  V�  QV�  /�	  V�  �  V�  .W�  �  �  V�  .W�
  �  �  V�  .W�  �  �  V�  .W�  YYY0�  P�	  V�  QX�  V�  .�  L�	  MY`               GDSC      
       �      ���Ӷ���   ������������Ŷ��   �����������������Ŷ�   ���������������Ķ���   ����Ŷ��   ��������Ӷ��   ������������Ҷ��   ����������Ӷ   ��������������Ҷ   �����������¶���   ��������ض��   ��������Ӷ��   ����������Ķ   �������Ӷ���   ������������Ӷ��   �������������������¶���      archived             picked               built         archive_built      
   built_tier                    CardManager                          	                  (      -   	   7   
   9      :      ;      B      M      N      O      Z      f      g      h      o      x      y      z      �      �      �      �      �      �      �       3YYY;�  N�  V�  R�  �  VL�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  MR�  �  V�  R�  �  VL�  R�  R�  MYOYYY0�  P�  QV�  �  T�  �  T�  P�  QYYY0�  P�  R�  V�  QV�  �  T�  L�  ML�  M�  YYY0�  P�  QV�  �  T�  LM�  YYY0�	  P�  R�
  V�  QV�  ;�  �  T�  P�	  QT�  P�
  Q�  �  T�  L�  ML�  M�  YYY0�  P�  QV�  �  T�  L�  M�  Y`       GDSC   F      �   �     ���Ӷ���   ������Ŷ   ������������Ŷ��   �������������Ŷ�   ���������������������Ķ�   �����������Ķ���   ���������������嶶��   �������������������   ���������϶�   �������������Ҷ�   ����������������Ŷ��   ��������Ҷ��   �����������϶���   ����Ӷ��   ������������϶��   ��������������������Ŷ��   ��������������������Ķ��   ����������ڶ   ������������Ķ��   ����������������Ҷ��   �����������������Ҷ�   ����������������������Ķ   �������������������Ķ���   ��������������Ķ   ����   ���Ӷ���   ������Ҷ   ��������Ҷ��   �Ҷ�   ���Ӷ���   �����������Ŷ���   �����Ҷ�   ��������Ӷ��   ��������������Ķ   �����������������Ķ�   ��������¶��   ��������ݶ��   ����������������Ķ��   ���������������������Ӷ�   �������Ӷ���   �������������������Ķ���   �������������������������϶�   ���������������Ķ���   ����Ŷ��   ������������������Ŷ   ��������������ض   �����������������Ŷ�   �����Ķ�   �������������������Ҷ���   ����������Ķ   �����������������Ŷ�   �������������������Ҷ���   ����Ŷ��   �����������Ŷ���   ���Ҷ���   ����������Ӷ   ����������������Ӷ��   ���������������������Ķ�   �������ض���   �������Ӷ���   ����������������Ķ��   �������������Ҷ�   �����������Ҷ���   �������ܶ���   ���ݶ���   ���ݶ���   �������ݶ���   ����������Ķ   ����������������   ���������������Ҷ���               
   game_ready              players_loaded               excess_energy                gizmos        usable                    owner_id      status                                 
                        "   	   #   
   (      -      .      1      4      5      6      7      F      J      Q      T      [      \      b      f      j      o      p      q      r      }       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9   �   :   �   ;     <     =     >     ?     @     A     B     C     D   &  E   ,  F   2  G   9  H   :  I   D  J   T  K   [  L   b  M   k  N   l  O   m  P   n  Q   v  R     S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k   �  l   �  m     n     o     p     q     r   #  s   -  t   3  u   :  v   ;  w   <  x   =  y   >  z   F  {   Q  |   \  }   ]  ~   ^     f  �   l  �   x  �   ~  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YYY;�  NOY;�  NOY;�  NOY;�  LMY;�  LMYY:�  Y:�  �  YYB�  YB�	  YYYY0�
  P�  V�  R�  V�  QX=V�  &�  V�  �  L�  M�  �  (V�  �  T�  P�  Q�  �  &�  PQV�  �  PQ�  �  PQ�  �  P�  QYYYY0�  P�  V�  QX=V�  �  T�  P�  Q�  �  T�  P�  QYYYY0�  P�  V�  QX=V�  �  L�  M�  �  &�  PQV�  �  P�  QYYYY0�  P�  V�  QX=V�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �  �  �  P�  R�  QYYYY0�  PQX=V�  )�  �  V�  �  P�  QYYYY0�  PQX�  V�  .�  T�  PQ�  T�  PQYYYY0�  PQX�  V�  .�  T�  PQ�  T�  PQYYYY0�  PQX=V�  ;�  LM�  )�  �  V�  �  T�  P�  QY�  *�  T�  PQ�  V�  ;�  �  L�&  PQ�  T�  PQM�  �  T�  P�  Q�  �  T�  P�  Q�  �  �  T�   P�  QYYYY0�!  PQX=V�  ;�"  �  T�#  PQ�  �  T�$  P�"  QYYY0�%  PQX�  V�  .�  L�  MYYY0�&  PQV�  .�'  P�%  PQQYYYY0�(  P�  V�  QV�  .�'  P�  QYYY0�)  P�*  QX=V�  �*  T�+  L�  ML�  R�  R�  R�  MYYYY0�,  P�  V�  QX=V�  ;�*  �(  P�  Q�  �*  T�-  P�  Q�  �)  P�*  Q�  �.  P�*  Q�  �/  T�0  P�  R�*  T�+  Q�  �1  T�2  P�*  Q�  �/  T�3  P�  R�*  T�4  QYYY0�.  P�*  QX=V�  ;�5  �*  T�+  L�  M�  )�6  �5  V�  �6  L�	  M�  YYYYY0�7  PQX�  V�  .�&  PQT�8  PQ�  �&  PQT�9  P�
  Q�  YYY0�:  PQX=V�  &�7  PQV�  &�%  PQ�  L�  MV�  �/  T�;  PQ�  .�  �  �,  P�%  PQQ�  �!  PQ�  �/  T�<  PQYYYY0�=  P�*  R�>  V�  QV�  ;�?  �@  T�  PQ�  ;�A  �?  T�B  PQ�  ;�6  �A  L�>  P�>  QM�  �  �6  L�  M�*  T�  �  �6  L�  M�C  T�D  �  �6  L�	  M�  �  �*  T�+  L�  MT�  P�6  Q�  �/  T�E  P�6  R�  R�*  T�  QY`          GDSC            �      ��������������Ķ   �������������ض�   ���������������Ķ���   ����������Ӷ   ���������������ض���   ���������������Ӷ���   ���������������Ӷ���   �������������������������ض�   ������������Ķ��   �����������������϶�   ���������������Ӷ���   �����Ķ�   ���������������Ѷ���   ������Ҷ   ������������������¶                       #   You do not have enough energy space        No energy of this type available                                     &      +      4   	   7   
   :      ;      <      E      O      Z      ]      `      a      b      o      z      �      �      �      3YYY0�  P�  R�  V�  QX�  V�  &�  P�  QV�  &�  P�  R�  Q�  P�  QV�  �  P�  Q�  �  T�	  P�  R�  Q�  .�  .�  YYY0�  P�  QX�  V�  &�  T�
  PQ
�  V�  �  T�  P�  T�  R�  Q�  .�  �  .YYY0�  P�  R�  V�  QX�  V�  &�  T�  P�  Q
�  V�  �  T�  P�  T�  R�  Q�  .�  �  .Y`               GDSC   +      �   �     ���Ӷ���   ��������������Ķ   �����ض�   �������Ӷ���   ������Ҷ   ����Ŷ��   ����Ŷ��   �������������¶�   ����������ض   ���������������Ŷ���   ����������ض   ��������������ض   �����Ŷ�   ��������������������¶��   ��������Ҷ��   ����¶��   ��������������������¶��   ���������������������¶�   ����������Ӷ    ����������������������������¶��   ����������������¶��   ��۶   ���������������Ӷ���   ���������϶�   �����������������¶�   ���Ӷ���   ����������������Ӷ��   ����������������Ӷ��   ���������������������Ķ�   ���Ķ���   �����¶�   ��������ض��   ������������������¶   �����������Ҷ���   ���������Ҷ�   �ڶ�   ��������¶��   ���������Ӷ�   ����������������¶��   ��������������Ӷ   ���������Ķ�   ������������Ķ��   ���������ﶶ      archive       pick      build         research   
   max_energy              max_archive             max_research            energy               excess_energy         gizmos     	   vp_tokens         archived             picked        built         archive_built      
   built_tier        tier   
   build_tier                                                            	      
   !      &      +      0      =      J      P      V      Z      \      a      f      s      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5     6     7   (  8   )  9   *  :   5  ;   >  <   ?  =   @  >   K  ?   T  @   U  A   V  B   W  C   _  D   d  E   m  F   q  G   t  H   u  I   v  J   ~  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d     e     f     g     h     i     j     k     l     m   $  n   %  o   &  p   '  q   2  r   8  s   B  t   E  u   H  v   I  w   J  x   K  y   V  z   \  {   f  |   i  }   l  ~   m     n  �   v  �   |  �   }  �   ~  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY2�  YY:�  LR�  R�  R�  MYY;�  Y;�  YY;�  N�  �  V�  R�  �  V�  R�  �  V�	  R�  �
  VL�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  MR�  VLMR�  �  VLMR�  �  V�  YOY;�  N�  �  V�  R�  �  VL�  R�  R�  R�  MR�  �  VL�  R�  R�  R�  MR�  �  V�  R�  �  VL�  R�  R�  MYOY;�  N�  V�  R�  �  V�  R�  �  VL�  R�  R�  MYOY;�  N�  V�  R�  �  V�  R�  �  V�  R�  �  V�  R�  �  VL�  R�  R�  MYOY;�	  N�  V�  R�  �  V�  YOY;�
  �  YYY0�  P�  V�  QX=V�  �
  �  YYY0�  P�  V�  R�  V�  QX=V�  �  L�  L�  MM�  YYY0�  P�  V�  QX�  V�  .�  L�  L�  MMYYY0�  P�  V�  QX�  V�  .�  L�
  ML�  MYYY0�  P�  V�  QX�  V�  .�  L�  ML�  MYYYY0�  PQX�  V�  ;�  �  �  )�  �  L�
  MV�  �  �  �  .�  YYY0�  PQX�  V�  .�  L�  M�  PQYYY0�  P�  V�  QX=V�  �  L�
  ML�  M�  YYYY0�  PQX�  V�  .�  LMT�  PQYYY0�  PQX�  V�  .�  L�  M�  PQ�  YY0�  PQV�  .�  L�  MT�  PQYYY0�  P�  V�  QV�  ;�  �  �  �  )�  �  L�  MV�  &�  L�  M�  V�  �  �  �  .�  YYY0�   PQX�  V�  .�  L�  MYYY0�!  PQX�  V�  .�  L�  MYYYY0�"  P�  V�  QX�  V�  )�#  �  V�  &�  L�  ML�#  MV�  .�  �  .�  YYYY0�$  P�%  V�  QX�  V�  )�#  �%  V�  &�  L�  ML�#  MV�  .�  �  .�  YYY0�&  PQX�  V�  .�  L�  MYYYY0�'  P�(  V�  QX�  V�  )�  �(  V�  &�  �)  T�*  V�  .�  PQ�  �  '�  L�
  ML�  M�  L�  ML�  MV�  .�  �  .�  Y` GDSC            c      ��������������Ķ   �������������ض�   ���������������Ķ���   ���Ķ���   ����������������Ҷ��   ���������������ض���   �������������������������ض�   �������������Ŷ�   ����������Ķ   �����������������Ŷ�   ������������������¶   �����Ķ�   ������������������Ŷ   ������Ҷ   ���������������Ŷ���   ���������������Ѷ���      research      You can't research anymore                                                    !      1      <   	   =   
   >      G      P      [      ^      a      3YYY0�  P�  R�  V�  QV�  &�  P�  Q�  P�  QV�  �  P�  Q�  ;�  �  T�	  P�  T�
  PQR�  Q�  �  T�  P�  T�  R�  QYYY0�  P�  QX�  V�  &�  T�  LMV�  �  T�  P�  T�  R�  Q�  .�  �  .�  Y`      GDSC   R   %   �        ���Ӷ���   ������ݶ   �����������������������¶���   ����   �����������   �����������   �����϶�   �����������Ķ���   ������������Ķ��   �������Ӷ���   ���������������Ķ���   ������¶   ��������������Ҷ   ��������Ҷ��   �����������������Ҷ�   ��������Ӷ��   ������������Ķ��   �����Ҷ�   ������Ŷ   ��������������Ķ   ����������Ӷ   ����������������Ҷ��   ����������������Ŷ��   ������������Ŷ��   ������������Ŷ��   �����������������������϶���   ������������Ҷ��   ����������������Ҷ��    ���������������������������Ҷ���   ����������Ķ   ����������������Ҷ��   ������������Ķ��   ��������������������   �����������������Ŷ�   �����ض�   ��������Ҷ��   ��������������Ѷ   ��Ѷ   ���������������Ѷ���   �����������������Ķ�   �����������Ķ���   �����������������Ķ�   ����������������Ķ��   ����������������Ķ��   ���������������Ҷ���   ���������������Ķ���   �������������������Ķ���   �������������Ҷ�   ����������������Ҷ��   ��������ض��   ��������������������   ������������   ��������������������   ���������������������¶�   �������������������¶���   ������������¶��   ���ٶ���   �������������Ķ�   ����������������ض��   �������������������Ҷ���   �����������Ŷ���   �������������������Ҷ���   �����������Ŷ���   ����������������������Ҷ   �������������������Ҷ���   ���������������Ҷ���   ��������������Ӷ   ������������������Ŷ   �������������Ŷ�   �����������������Զ�   ����������Ķ   ������������������Ҷ   ��������������¶   ������ڶ   �����¶�   �����¶�   �������Ӷ���   �������������϶�   �������������ض�   ��������������ض   �������ض���   �������Ӷ���   u              Server started        peer_connected        _peer_connected       peer_disconnected         _peer_disconnected        User       
    connected         disconnected                set_player_list       set_ready_players      
   start_game     
   setup_game        receive_action_status         receive_status_msg        receive_warning_msg       return_player_order       return_active_player      return_start_card         add_revealed_card         return_energy_row         return_tier_decks_count       successful_action         player_stats_updated      player_flags_updated      player_capacity_updated       return_disabled_card      give_player_card      return_research_cards         return_converter_tab      return_converter_card         CardEffectProcessor       disable_action        display_end_btn       end_game                                                    	   "   
   #      $      *      3      <      A      B      M      X      Y      Z      c      o      p      q      z      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +     ,     -     .     /     0   #  1   +  2   ,  3   -  4   3  5   9  6   ?  7   F  8   G  9   H  :   Y  ;   g  <   h  =   i  >   v  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U     V     W     X   (  Y   )  Z   *  [   3  \   <  ]   =  ^   >  _   E  `   P  a   Q  b   R  c   [  d   d  e   e  f   f  g   m  h   z  i   {  j   |  k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~          �     �     �     �   %  �   &  �   '  �   8  �   E  �   F  �   G  �   T  �   `  �   a  �   b  �   o  �   {  �   |  �   }  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �     �   3YY;�  �  T�  PQY;�  Y;�  �  YYY0�  PQV�  �  PQ�  YY0�  PQV�  �  T�  P�  R�  Q�  �	  PQT�
  P�  Q�  �?  P�  QY�  �  T�  P�  RR�  Q�  �  T�  P�  RR�  QYYY0�  P�  V�  QV�  �?  P�  �>  P�  Q�  Q�  YY0�  P�  V�  QV�  �?  P�  �>  P�  Q�	  Q�  W�  T�  P�>  P�  QQ�  �  P�
  R�  RW�  T�  QYYYD0�  P�  V�  QV�  ;�  �>  P�	  PQT�  PQQ�  W�  T�  L�  M�  �  �  P�
  R�  RW�  T�  Q�  YYD0�  P�  V�  QV�  ;�  �>  P�	  PQT�  PQQ�  W�  T�  P�  R�  Q�  �  P�
  R�  RW�  T�  QYYY0�  PQV�  �  P�
  R�  QYYYD0�  PQV�  ;�  �>  P�	  PQT�  PQQ�  W�  T�  P�  QYYY0�  PQV�  �  T�  PQ�  �  T�   PQ�  �  P�
  R�  QYYY0�!  P�  V�  R�"  V�  R�#  V�  QV�  �  P�  P�  QR�  R�"  R�#  QYYY0�$  P�  V�  R�%  V�  QV�  �  P�  P�  QR�  R�%  QYYY0�&  P�  V�  R�%  V�  QV�  �  P�  P�  QR�  R�%  QYYYD0�'  PQV�  ;�  �	  PQT�  PQ�  �  P�  R�  RW�  T�(  QYYYD0�)  PQV�  ;�  �	  PQT�  PQ�  �  P�  R�  RW�  T�*  PQQYYY0�+  PQV�  �  P�
  R�  RW�  T�*  PQQYYYD0�,  PQV�  ;�  �>  P�	  PQT�  PQQ�  ;�-  W�  T�.  P�  QY�  �  P�
  R�  R�  T�/  P�-  QR�  QYYY0�0  P�1  V�  QV�  �  P�
  R�  R�1  QYYYD0�2  PQV�  �  P�
  R�  R�  T�3  QYYY0�4  P�3  V�  QV�  �  P�
  R�  R�3  QYYYD0�5  PQV�  �  P�
  R�  R�  T�6  PQQYYYD0�7  P�#  V�  R�8  QV�  ;�  �>  P�	  PQT�  PQQ�  ;�-  W�  T�.  P�  Q�  W�9  T�7  P�-  R�#  R�8  QYYYY0�:  P�  V�  QV�  �  P�  P�  QR�  Q�  YY0�;  P�  V�  R�<  V�  QV�  �  P�
  R�  R�  R�<  QYYY0�=  P�  V�  R�>  V�  QV�  �  P�
  R�  R�  R�>  QYYY0�?  P�  V�  QV�  �  P�
  R�  R�  QYYY0�@  P�1  V�  R�  V�  QV�  �  P�
  R�  R�1  R�  QYYY0�A  P�1  V�  R�B  V�  R�  V�  QV�  �  P�
  R�  R�1  R�B  R�  QYYY0�C  P�  V�  R�D  V�  QV�  �  P�  P�  QR�  R�D  QYYY0�E  P�  V�  R�F  V�  QV�  �  P�  P�  QR�  R�F  QYYY0�G  P�  V�  R�1  V�  QV�  �  P�  P�  QR�   R�1  QYYYD0�H  P�I  V�  R�J  V�  R�K  V�  QV�  W�9  T�L  P�!  QT�M  P�I  R�J  R�K  QYYY0�N  P�"  V�  R�  V�  QV�  �  P�  P�  QR�"  R�"  R�  QYYY0�O  P�  V�  QV�  �  P�  P�  QR�#  QYYYD0�P  PQV�  W�  T�P  PQYYY0�Q  PQV�  �  P�
  R�$  QY` [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [remap]

path="res://Scripts/ActionProcessor.gdc"
              [remap]

path="res://Scripts/ArchiveProcessor.gdc"
             [remap]

path="res://Scripts/BuildProcessor.gdc"
               [remap]

path="res://Scripts/CardEffectProcessor.gdc"
          [remap]

path="res://Scripts/CardManager.gdc"
  [remap]

path="res://Scripts/Deck.gdc"
         [remap]

path="res://Scripts/DeckManager.gdc"
  [remap]

path="res://Scripts/EnergyManager.gdc"
[remap]

path="res://Scripts/EventProcessor.gdc"
               [remap]

path="res://Scripts/FlagManager.gdc"
  [remap]

path="res://Scripts/GameState.gdc"
    [remap]

path="res://Scripts/PickProcessor.gdc"
[remap]

path="res://Scripts/PlayerContainer.gdc"
              [remap]

path="res://Scripts/ResearchProcessor.gdc"
            [remap]

path="res://Scripts/Server.gdc"
       ECFG	      _global_script_classes�                    class         ActionProcessor       language      GDScript      path       res://Scripts/ActionProcessor.gd      base      Node            class         Deck      language      GDScript      path      res://Scripts/Deck.gd         base      Node            class         PlayerContainer       language      GDScript      path       res://Scripts/PlayerContainer.gd      base      Node   _global_script_class_icons\               ActionProcessor              Deck             PlayerContainer           application/config/name         GizmosServer   application/run/main_scene(         res://Scenes/SceneHandler.tscn     autoload/EnergyManager(         *res://Scripts/EnergyManager.gd    autoload/Server$         *res://Scenes/Server.tscn      autoload/FlagManager(         *res://Scripts/FlagManager.gd      autoload/DeckManager(         *res://Scenes/DeckManager.tscn  )   rendering/environment/default_environment          res://default_env.tres               