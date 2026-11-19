.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;->LIPLINER_THICK:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    return-void
.end method
