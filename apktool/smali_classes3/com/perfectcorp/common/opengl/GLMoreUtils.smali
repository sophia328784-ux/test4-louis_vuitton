.class public abstract Lcom/perfectcorp/common/opengl/GLMoreUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "There were unchecked GL errors."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string p0, "glGetIntegerv"

    invoke-static {p0}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    aget p0, v0, v1

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unchecked OpenGL error: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    move-object v4, v3

    goto :goto_0

    :pswitch_0
    const-string v4, "GL_INVALID_FRAMEBUFFER_OPERATION"

    goto :goto_0

    :pswitch_1
    const-string v4, "GL_OUT_OF_MEMORY"

    goto :goto_0

    :pswitch_2
    const-string v4, "GL_STACK_UNDERFLOW"

    goto :goto_0

    :pswitch_3
    const-string v4, "GL_STACK_OVERFLOW"

    goto :goto_0

    :pswitch_4
    const-string v4, "GL_INVALID_OPERATION"

    goto :goto_0

    :pswitch_5
    const-string v4, "GL_INVALID_VALUE"

    goto :goto_0

    :pswitch_6
    const-string v4, "GL_INVALID_ENUM"

    goto :goto_0

    :cond_1
    const-string v4, "GL_NO_ERROR"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x506

    if-ne v0, v1, :cond_5

    sget v0, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    const v0, 0x8d40

    invoke-static {v0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const-string v1, "glCheckFramebufferStatus"

    invoke-static {v1}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    const v1, 0x8cd5

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x8cd9

    if-eq v0, v1, :cond_4

    const v1, 0x8cdd

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_7
    const-string v3, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    goto :goto_1

    :pswitch_8
    const-string v3, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    goto :goto_1

    :pswitch_9
    const-string v3, "GL_FRAMEBUFFER_COMPLETE"

    goto :goto_1

    :cond_3
    const-string v3, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_1

    :cond_4
    const-string v3, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Invalid framebuffer status: 0x"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8cd5
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
