const stories = [
  {
    "id": 1,
    "imageUrl":
        "https://images.unsplash.com/photo-1541647376583-8934aaf3448a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGZhY2UlMjBwcm9maWxlJTIwaHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "Thad Story",
    "isStory": false,
    "isAdd": true
  },
  {
    "id": 2,
    "imageUrl":
        "https://images.unsplash.com/photo-1524154217857-45f012d0f167?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhY2UlMjBwcm9maWxlJTIwaHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "Nat Yewup",
    "isStory": true,
    "isAdd": false
  },
  {
    "id": 3,
    "imageUrl":
        "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTN8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "maya90_20",
    "isStory": true,
    "isAdd": false
  },
  {
    "id": 4,
    "imageUrl":
        "https://images.unsplash.com/photo-1560787313-5dff3307e257?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fGZhY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "jaketehr",
    "isStory": true,
    "isAdd": false
  },
  {
    "id": 5,
    "imageUrl":
        "https://images.unsplash.com/photo-1542513217-0b0eedf7005d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fGZhY2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "odunsi_olad",
    "isStory": true,
    "isAdd": false
  },
  {
    "id": 6,
    "imageUrl":
        "https://images.unsplash.com/photo-1607095932449-f2f68371ecfe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZSUyMHByb2ZpbGUlMjBodW1hbiUyMGNoaWxkcmVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "primiily",
    "isStory": true,
    "isAdd": false
  },
  {
    "id": 7,
    "imageUrl":
        "https://images.unsplash.com/photo-1527090975279-5d5ef18c6734?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZSUyMHByb2ZpbGUlMjBodW1hbiUyMGNoaWxkcmVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "_bailey_",
    "isStory": false,
    "isAdd": true
  },
  {
    "id": 8,
    "imageUrl":
        "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8cGVvcGxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "roses_are_red",
    "isStory": true,
    "isAdd": true
  },
  {
    "id": 9,
    "imageUrl":
        "https://images.unsplash.com/photo-1488161628813-04466f872be2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "mowowale",
    "isStory": false,
    "isAdd": false
  },
  {
    "id": 10,
    "imageUrl":
        "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "minashe___",
    "isStory": false,
    "isAdd": true
  },
  {
    "id": 11,
    "imageUrl":
        "https://images.unsplash.com/photo-1540174401473-df5f1c06c716?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZhY2UlMjBwcm9maWxlJTIwaHVtYW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "ale_ septh",
    "isStory": false,
    "isAdd": false
  },
  {
    "id": 12,
    "imageUrl":
        "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "black_panther",
    "isStory": false,
    "isAdd": true
  },
  {
    "id": 13,
    "imageUrl":
        "https://images.unsplash.com/photo-1517486808906-6ca8b3f04846?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "family",
    "isStory": true,
    "isAdd": true
  },
  {
    "id": 14,
    "imageUrl":
        "https://images.unsplash.com/photo-1516726817505-f5ed825624d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "model01",
    "isStory": false,
    "isAdd": false
  },
  {
    "id": 15,
    "imageUrl":
        "https://images.unsplash.com/photo-1445633629932-0029acc44e88?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "username": "mom@30",
    "isStory": true,
    "isAdd": false
  },
];
