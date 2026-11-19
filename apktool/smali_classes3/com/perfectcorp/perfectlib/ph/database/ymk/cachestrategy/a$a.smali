.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "guid can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->a:Ljava/lang/String;

    const-string p1, "type can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    const-string p1, "jsonString can\'t be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->c:Ljava/lang/String;

    const-string p1, "state can\'t be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

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

    const-string v1, "guid"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$c;->d:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "jsonString"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "state"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$a;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/cachestrategy/a$b;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
