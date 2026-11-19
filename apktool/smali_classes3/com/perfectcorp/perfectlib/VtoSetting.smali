.class public final Lcom/perfectcorp/perfectlib/VtoSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/VtoSetting$Builder;,
        Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/VtoSetting$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->a:Ljava/lang/String;

    sget v1, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a:I

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Strings;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(Lcom/perfectcorp/perfectlib/VtoSetting;)Lcom/perfectcorp/perfectlib/VtoSetting$Builder;
    .locals 1

    .line 6
    new-instance v0, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/VtoSetting$Builder;-><init>(Lcom/perfectcorp/perfectlib/VtoSetting;)V

    return-object v0
.end method


# virtual methods
.method public final getPaletteGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getPatternGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getProductGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkuGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkuSetGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "VtoSetting"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "skuSetGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "paletteGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "patternGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "wearingStyleGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "parameter"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
