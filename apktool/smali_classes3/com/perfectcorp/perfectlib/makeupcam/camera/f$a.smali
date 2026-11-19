.class abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$b;
    }
.end annotation


# direct methods
.method public static a(ZZ)Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a;
    .locals 0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$b;->a:Z

    return-object p0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$a;

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/f$a$a;-><init>(Z)V

    return-object p0
.end method


# virtual methods
.method public abstract b(Z)V
.end method

.method public abstract c()Z
.end method
