// SPDX-License-Identifier: MIT

// developed by Bathiya Chathuranga

pragma solidity ^0.8.7;

contract blockchain_cv{

    address public owner;
    
    struct person
    {
      string name;
      string bio;
      string email;
      string phone;
      string website;
      string facebook;
      string instagram;
      string linkedin;
     }



     person bathiya;

     string[] mySkill;


      constructor() {
          owner = msg.sender;
      }


    //set my details
    function setBio(
            string memory name,
            string memory bio,
            string memory email,
            string memory phone,
            string memory website,
            string memory facebook,
            string memory instagram,
            string memory linkedin ) public {

        require(msg.sender == owner, 'Only owner can setBio');

        bathiya = person(name,bio,email,phone,website,facebook,instagram,linkedin);
    }


    // update my details
    function updateBio(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.bio = value;
    }

    function updateEmail(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.email = value;
    }

    function updatePhone(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.phone = value;
    }

    function updateWebsite(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.website = value;
    }

    function updateFacebook(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.facebook = value;
    }

    function updateInstagram(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.instagram = value;
    }

    function updateLinkedin(string memory value) public {
        require(msg.sender == owner, 'Only owner can update Bio');
        bathiya.linkedin = value;
    }




    //set skills 
    function setSkills(string memory value) public{
        require(msg.sender == owner, 'Only owner can set Skills');

        mySkill.push(value);
    }

    function updateSkill(uint index, string memory value) public{
        require(msg.sender == owner, 'Only owner can update Skills');

        mySkill[index] = value;
    }


    // get function
     function getMyCV() public view returns(person memory){
         return bathiya;
     }

    function getSkills() public view returns(string[] memory){
         return mySkill;
     }


}
