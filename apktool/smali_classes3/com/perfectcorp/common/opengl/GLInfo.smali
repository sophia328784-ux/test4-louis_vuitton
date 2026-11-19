.class public abstract Lcom/perfectcorp/common/opengl/GLInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/opengl/GLInfo$a;,
        Lcom/perfectcorp/common/opengl/GLInfo$b;
    }
.end annotation


# static fields
.field public static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/common/opengl/GLInfo$b;

    invoke-direct {v0}, Lcom/perfectcorp/common/opengl/GLInfo$b;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/common/opengl/GLInfo$b;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/perfectcorp/common/opengl/GLInfo;->a:I

    return-void
.end method
