.class public final Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Row"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->b:J

    const-string p1, "type can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const-string p1, "folderPath can\'t be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->d:Ljava/lang/String;

    iput-wide p6, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    const-string p1, "type can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    const-string p1, "folderPath can\'t be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->d:Ljava/lang/String;

    iput-wide p4, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->e:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->b:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-class v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->c:Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Type;->a:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "folderPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/idusage/IdUsageDao$Row;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "folderSizeInByte"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
