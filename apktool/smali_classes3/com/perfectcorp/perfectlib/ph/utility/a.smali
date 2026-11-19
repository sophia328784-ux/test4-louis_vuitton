.class public final Lcom/perfectcorp/perfectlib/ph/utility/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/utility/a$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/utility/a$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const-string v1, "perfectEffect can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->b:Ljava/lang/String;

    const-string v1, "productId can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->b:Ljava/lang/String;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->c:Ljava/lang/String;

    const-string v1, "skuGuid can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/utility/a$a;->d:Ljava/lang/String;

    const-string v0, "obbPath can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "AccessoryParameter"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->a:Lcom/perfectcorp/perfectlib/PerfectEffect;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "productId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "obbPath"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/utility/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
