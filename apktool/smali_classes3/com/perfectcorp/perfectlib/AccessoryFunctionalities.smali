.class public final Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;
.super Ljava/lang/Object;


# instance fields
.field public final isNecklaceLiveEnabled:Z

.field public final isNecklacePhotoEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklaceLiveEnabled:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklacePhotoEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/ymk/kernelctrl/preference/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "5ba67514-b41e-44ad-9f1b-ef4d16a4bef2"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklaceLiveEnabled:Z

    const-string v0, "fccc5881-4bd9-41cf-b821-42a70a38c352"

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklacePhotoEnabled:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "AccessoryFunctionalities"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "isNecklaceLiveEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklaceLiveEnabled:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isNecklacePhotoEnabled"

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/AccessoryFunctionalities;->isNecklacePhotoEnabled:Z

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
