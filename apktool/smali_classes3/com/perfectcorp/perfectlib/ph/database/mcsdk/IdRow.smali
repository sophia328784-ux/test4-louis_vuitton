.class public Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;
.super Ljava/lang/Object;


# static fields
.field public static final f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    const-string v4, ""

    const-string v5, ""

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->f:Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "type can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->a:Ljava/lang/String;

    const-string p1, "skuGuid can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    const-string p1, "productId can\'t be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;

    const-string p1, "skuItemGuid can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    const-string p1, "shadetId can\'t be null"

    invoke-static {p5, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)V
    .locals 2

    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "IdRow"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "productId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuItemGuid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "shadetId"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/mcsdk/IdRow;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
