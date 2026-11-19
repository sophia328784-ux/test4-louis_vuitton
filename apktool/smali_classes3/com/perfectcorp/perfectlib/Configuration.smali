.class public final Lcom/perfectcorp/perfectlib/Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/Configuration$Builder;,
        Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;,
        Lcom/perfectcorp/perfectlib/Configuration$ImageSource;
    }
.end annotation


# static fields
.field public static final m:Lcom/perfectcorp/perfectlib/Configuration;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

.field public final b:Lcom/perfectcorp/perfectlib/Path;

.field public final c:Lcom/perfectcorp/perfectlib/Path;

.field public final d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public final e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/perfectlib/Configuration;->builder()Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->assets(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->setModelPath(Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;)Lcom/perfectcorp/perfectlib/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/Configuration$Builder;->build()Lcom/perfectcorp/perfectlib/Configuration;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/Configuration;->m:Lcom/perfectcorp/perfectlib/Configuration;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/Configuration$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    const-string v1, "modelPath can\'t be null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->b:Lcom/perfectcorp/perfectlib/Path;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->b:Lcom/perfectcorp/perfectlib/Path;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->c:Lcom/perfectcorp/perfectlib/Path;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->c:Lcom/perfectcorp/perfectlib/Path;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->f:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->i:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->i:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->j:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->j:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/Configuration;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/Configuration$Builder;->l:Ljava/lang/String;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/Configuration;->l:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/Configuration$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/Configuration$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/Configuration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "Configuration"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "modelPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "preloadPath"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->b:Lcom/perfectcorp/perfectlib/Path;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "configurationFile"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->c:Lcom/perfectcorp/perfectlib/Path;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "imageSource"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "funStickerQuality"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->e:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "userId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isDeveloperMode"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->g:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isMappingMode"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isPreviewMode"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->i:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "isEnableDataTracking"

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->c(Ljava/lang/String;Z)V

    const-string v1, "skinCareSurveyId"

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/Configuration;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skinCareSettingId"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/Configuration;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
