.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Color"
.end annotation


# instance fields
.field public volatile a:Ljava/lang/String;

.field public volatile b:I

.field public volatile c:I

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->a:Ljava/lang/String;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->e:Ljava/lang/String;

    return-void
.end method
