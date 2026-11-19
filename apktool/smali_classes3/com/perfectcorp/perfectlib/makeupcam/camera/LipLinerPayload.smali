.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Setting;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->b:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->c:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->c:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->d:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->d:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->e:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->e:I

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->f:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->f:I

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    return-void
.end method
