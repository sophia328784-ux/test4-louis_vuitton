.class public final Lcom/perfectcorp/perfectlib/DebugMode;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:Z

.field public final d:Ljava/io/File;

.field public final e:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/DebugMode$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->a:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->a:Z

    iget v0, p1, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->b:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->b:I

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->c:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->c:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->d:Ljava/io/File;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->d:Ljava/io/File;

    iget p1, p1, Lcom/perfectcorp/perfectlib/DebugMode$Builder;->e:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/DebugMode;->e:I

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/DebugMode$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/DebugMode$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/DebugMode$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "DebugMode"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "isLogcatEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/DebugMode;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/DebugMode;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logcatLevel"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isFileLoggerEnabled"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/DebugMode;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "fileLoggerFolder"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/DebugMode;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/DebugMode;->e:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fileLoggerLevel"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
