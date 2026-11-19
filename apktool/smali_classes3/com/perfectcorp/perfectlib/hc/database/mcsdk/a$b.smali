.class public final Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

.field public d:Ljava/lang/String;

.field public e:J


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-class v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->c:Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$c;->c:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "folderPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/hc/database/mcsdk/a$b;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "folderSizeInByte"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
