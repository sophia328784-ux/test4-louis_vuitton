.class public final Lcom/perfectcorp/perfectlib/Path;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/Path;->a:Z

    const-string p1, "path can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/Path;->b:Ljava/lang/String;

    return-void
.end method

.method public static assets(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Path;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/Path;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/Path;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static file(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Path;
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/Path;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/Path;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "Path"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "isAssets"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Path;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "path"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Path;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
