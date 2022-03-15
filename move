using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterController2D : MonoBehaviour
{
    private Rigidbody2D rb2D;   //rb2D is just a reference whenever we need to write Rigidbody2D as a shortcut

    private float moveSpeed;    //we just float so as we can have decimal value
    private float jumpForce;    //how height the player can jump
    private bool isJumping;   //Use to check if player is jumping or on the ground, bool as it can be either true or false only.
    private float moveHorizontal;   //To get player input-when player click on a buttom on keyboard
    private float moveVertical;
    // Start is called before the first frame update
    void Start()
    {
        rb2D = gameObject.GetComponent<Rigidbody2D>();
        moveSpeed = 2f;   //The movement speed of the character
        jumpForce = 60f;  //the distance the character can jump
        isJumping = false;
    }

    // Update is called once per frame
    private void Update()
    {
        moveHorizontal = Input.GetAxisRaw("Horizontal");
        moveVertical = Input.GetAxisRaw("Vertical");
    }
    void FixedUpdate()
    {
        if (moveHorizontal > 0.1f || moveHorizontal < -0.1f)
        {
            rb2D.AddForce(new Vector2(moveHorizontal * moveSpeed, 0f), ForceMode2D.Impulse);
        }
    }

}
