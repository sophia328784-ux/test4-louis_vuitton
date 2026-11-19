.class final Lcom/perfectcorp/perfectlib/HandFunctionalities;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->a:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->b:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->e:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->f:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->i:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->j:Z

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "4dc308f1-eada-4e49-aa1e-0b3bfd3d509e"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->a:Z

    const-string v0, "25f91c6e-7522-4294-8a86-c2349ecfa982"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->b:Z

    const-string v0, "adbd8b48-5bcb-465b-9079-c0ad816007b5"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->c:Z

    const-string v0, "ca796e8e-5512-43a9-baa7-8cfafb16051c"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->d:Z

    const-string v0, "9fb8b2f9-c36b-4bdf-ae05-ba0ac6a4eeea"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->e:Z

    const-string v0, "05b09271-4b74-40f1-8281-752cee3036c2"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->f:Z

    const-string v0, "6e526351-5032-48d2-8f3e-961c82d8af39"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->g:Z

    const-string v0, "8a4482f9-6238-4c9d-a238-14fca3e7abab"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->h:Z

    const-string v0, "46b597e9-62f2-4b6b-9503-f8166528db97"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->i:Z

    const-string v0, "772a8c80-37ad-4fec-81d0-30da76c322e2"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->j:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "HandFunctionalities"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "isNailLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isNailPhotoEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isRingLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isRingPhotoEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->d:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isWatchLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isWatchPhotoEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isBraceletLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isBraceletPhotoEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isJewelryLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isJewelryPhotoEnabled"

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/HandFunctionalities;->j:Z

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
