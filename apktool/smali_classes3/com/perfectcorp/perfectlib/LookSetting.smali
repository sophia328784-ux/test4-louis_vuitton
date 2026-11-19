.class public final Lcom/perfectcorp/perfectlib/LookSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/LookSetting$Builder;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/LookSetting$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/LookSetting$Builder;->a:Ljava/lang/String;

    sget v0, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LookSetting;->a:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/LookSetting$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/LookSetting$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/LookSetting$Builder;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/LookSetting;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/LookSetting$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/LookSetting$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/LookSetting$Builder;->setLookGuid(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/LookSetting$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/LookSetting$Builder;->build()Lcom/perfectcorp/perfectlib/LookSetting;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLookGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookSetting;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "LookSetting"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "lookGuid"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LookSetting;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
