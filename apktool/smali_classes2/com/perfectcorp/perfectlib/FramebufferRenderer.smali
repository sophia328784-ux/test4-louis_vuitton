.class public interface abstract Lcom/perfectcorp/perfectlib/FramebufferRenderer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;
    }
.end annotation


# virtual methods
.method public abstract onDraw(Ljavax/microedition/khronos/opengles/GL10;I)V
.end method

.method public abstract onEGLContextCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract release(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract setOnDirtyListener(Lcom/perfectcorp/perfectlib/FramebufferRenderer$OnDirtyListener;)V
.end method
