.class public Lcom/sightcall/universal/media/Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/Metadata$Origin;,
        Lcom/sightcall/universal/media/Metadata$Storage;,
        Lcom/sightcall/universal/media/Metadata$Extension;
    }
.end annotation


# static fields
.field private static final REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field final caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "caseReportId"
    .end annotation
.end field

.field cloudGroup:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "cloudGroup"
    .end annotation
.end field

.field environment:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "environment"
    .end annotation
.end field

.field private final extension:Lcom/sightcall/universal/media/Metadata$Extension;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "extension"
    .end annotation
.end field

.field filename:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "filename"
    .end annotation
.end field

.field final lat:D
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "lat"
    .end annotation
.end field

.field final lng:D
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "lng"
    .end annotation
.end field

.field localGroup:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "localGroup"
    .end annotation
.end field

.field number:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "number"
    .end annotation
.end field

.field final origin:Lcom/sightcall/universal/media/Metadata$Origin;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "origin"
    .end annotation
.end field

.field final pathName:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "pathName"
    .end annotation
.end field

.field final reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field private final storage:Lcom/sightcall/universal/media/Metadata$Storage;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "storage"
    .end annotation
.end field

.field final timecode:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "timecode"
    .end annotation
.end field

.field final timestamp:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "timestamp"
    .end annotation
.end field

.field private uploadToken:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uploadToken"
    .end annotation
.end field

.field private uploadUrl:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "uploadUrl"
    .end annotation
.end field

.field final usecaseId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecaseId"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\$\\{([a-z_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/Metadata;->REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(IJJLjava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Origin;DDLjava/lang/String;Lcom/sightcall/universal/media/Metadata$Storage;Lcom/sightcall/universal/media/Metadata$Extension;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/sightcall/universal/media/Metadata;->usecaseId:I

    .line 40
    iput-wide p2, p0, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    .line 41
    iput-wide p4, p0, Lcom/sightcall/universal/media/Metadata;->timecode:J

    .line 42
    iput-object p6, p0, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/sightcall/universal/media/Metadata;->caseReportId:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/sightcall/universal/media/Metadata;->origin:Lcom/sightcall/universal/media/Metadata$Origin;

    .line 45
    iput-wide p9, p0, Lcom/sightcall/universal/media/Metadata;->lat:D

    .line 46
    iput-wide p11, p0, Lcom/sightcall/universal/media/Metadata;->lng:D

    .line 47
    iput-object p13, p0, Lcom/sightcall/universal/media/Metadata;->pathName:Ljava/lang/String;

    .line 48
    iput-object p14, p0, Lcom/sightcall/universal/media/Metadata;->storage:Lcom/sightcall/universal/media/Metadata$Storage;

    .line 49
    iput-object p15, p0, Lcom/sightcall/universal/media/Metadata;->extension:Lcom/sightcall/universal/media/Metadata$Extension;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Origin;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Storage;Lcom/sightcall/universal/media/Metadata$Extension;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/media/Metadata;->usecaseId:I

    iput-wide p3, p0, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    iput-wide p5, p0, Lcom/sightcall/universal/media/Metadata;->timecode:J

    iput-object p7, p0, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    iput-object p8, p0, Lcom/sightcall/universal/media/Metadata;->caseReportId:Ljava/lang/String;

    iput-object p9, p0, Lcom/sightcall/universal/media/Metadata;->origin:Lcom/sightcall/universal/media/Metadata$Origin;

    iput-wide p10, p0, Lcom/sightcall/universal/media/Metadata;->lat:D

    iput-wide p12, p0, Lcom/sightcall/universal/media/Metadata;->lng:D

    iput-object p15, p0, Lcom/sightcall/universal/media/Metadata;->environment:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->localGroup:Ljava/lang/String;

    iput-object p14, p0, Lcom/sightcall/universal/media/Metadata;->pathName:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->storage:Lcom/sightcall/universal/media/Metadata$Storage;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->extension:Lcom/sightcall/universal/media/Metadata$Extension;

    iput-object p2, p0, Lcom/sightcall/universal/media/Metadata;->filename:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lnet/rtccloud/sdk/Call;)I
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/media/Metadata;->getPictureCount(Lnet/rtccloud/sdk/Call;)I

    move-result p0

    return p0
.end method

.method public static create(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Origin;Lcom/sightcall/universal/agent/Usecase;Lcom/sightcall/universal/agent/Usecase$SavePicture;DD)Lcom/sightcall/universal/media/Metadata;
    .locals 16

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lcom/sightcall/universal/media/Metadata;->increasePictureCount(Lnet/rtccloud/sdk/Call;)V

    new-instance v1, Lcom/sightcall/universal/media/Metadata;

    invoke-virtual/range {p4 .. p4}, Lcom/sightcall/universal/agent/Usecase;->idInt()I

    move-result v2

    move-object v4, v1

    move v1, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v6, v4

    invoke-virtual/range {p0 .. p0}, Lnet/rtccloud/sdk/Call;->activeDuration()J

    move-result-wide v4

    iget-object v7, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v7}, Lcom/sightcall/universal/model/Config;->reference()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-static {v10, v8, v0, v9}, Lcom/sightcall/universal/media/Metadata;->parsePathName(Lcom/sightcall/universal/agent/Usecase$SavePicture;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/media/Metadata$Origin;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v10}, Lcom/sightcall/universal/media/Metadata;->parseStorage(Lcom/sightcall/universal/agent/Usecase$SavePicture;)Lcom/sightcall/universal/media/Metadata$Storage;

    move-result-object v14

    invoke-static {v10}, Lcom/sightcall/universal/media/Metadata;->parseExtension(Lcom/sightcall/universal/agent/Usecase$SavePicture;)Lcom/sightcall/universal/media/Metadata$Extension;

    move-result-object v15

    move-wide/from16 v11, p8

    move-object v0, v6

    move-object v6, v7

    move-object v8, v9

    move-object/from16 v7, p2

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v15}, Lcom/sightcall/universal/media/Metadata;-><init>(IJJLjava/lang/String;Ljava/lang/String;Lcom/sightcall/universal/media/Metadata$Origin;DDLjava/lang/String;Lcom/sightcall/universal/media/Metadata$Storage;Lcom/sightcall/universal/media/Metadata$Extension;)V

    move-object v6, v0

    return-object v6
.end method

.method private static createReplacementFactory(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/media/Metadata$Origin;)Lcom/sightcall/universal/util/ReplacementUtils$Replacement;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/media/Metadata$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sightcall/universal/media/Metadata$1;-><init>(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/media/Metadata$Origin;)V

    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/sightcall/universal/media/Metadata;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/Metadata;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/Metadata;

    return-object p0
.end method

.method private static getPictureCount(Lnet/rtccloud/sdk/Call;)I
    .locals 2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->extras()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "saved_picture_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static increasePictureCount(Lnet/rtccloud/sdk/Call;)V
    .locals 2

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call$Parameters;->extras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/sightcall/universal/media/Metadata;->getPictureCount(Lnet/rtccloud/sdk/Call;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    const-string v1, "saved_picture_count"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static parseExtension(Lcom/sightcall/universal/agent/Usecase$SavePicture;)Lcom/sightcall/universal/media/Metadata$Extension;
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$SavePicture;->type()Lcom/sightcall/universal/agent/Usecase$SavePicture$Type;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/media/Metadata$Extension;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/media/Metadata$2;->$SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/sightcall/universal/media/Metadata$Extension;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Extension;->JPG:Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Extension;->PNG:Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0
.end method

.method private static parsePathName(Lcom/sightcall/universal/agent/Usecase$SavePicture;Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/media/Metadata$Origin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/agent/Usecase$SavePicture;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/Usecase$SavePicture;->name:Ljava/lang/String;

    sget-object v0, Lcom/sightcall/universal/media/Metadata;->REPLACEMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, p2, p3}, Lcom/sightcall/universal/media/Metadata;->createReplacementFactory(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/media/Metadata$Origin;)Lcom/sightcall/universal/util/ReplacementUtils$Replacement;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/sightcall/universal/util/ReplacementUtils;->replace(Ljava/lang/String;Ljava/util/regex/Pattern;Lcom/sightcall/universal/util/ReplacementUtils$Replacement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseStorage(Lcom/sightcall/universal/agent/Usecase$SavePicture;)Lcom/sightcall/universal/media/Metadata$Storage;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/Metadata$2;->$SwitchMap$com$sightcall$universal$agent$Usecase$SavePicture$Media:[I

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase$SavePicture;->media()Lcom/sightcall/universal/agent/Usecase$SavePicture$Media;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/sightcall/universal/media/Metadata$Storage;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Storage;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Storage;->LOCAL:Lcom/sightcall/universal/media/Metadata$Storage;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Storage;->CLOUD:Lcom/sightcall/universal/media/Metadata$Storage;

    return-object p0
.end method


# virtual methods
.method public caseReportId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->caseReportId:Ljava/lang/String;

    return-object p0
.end method

.method public cloudGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->cloudGroup:Ljava/lang/String;

    return-object p0
.end method

.method public environment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->environment:Ljava/lang/String;

    return-object p0
.end method

.method public extension()Lcom/sightcall/universal/media/Metadata$Extension;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->extension:Lcom/sightcall/universal/media/Metadata$Extension;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Extension;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Extension;

    return-object p0
.end method

.method public filename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public latitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/media/Metadata;->lat:D

    return-wide v0
.end method

.method public localGroup()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->localGroup:Ljava/lang/String;

    return-object p0
.end method

.method public longitude()D
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/media/Metadata;->lng:D

    return-wide v0
.end method

.method public number()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/Metadata;->number:I

    return p0
.end method

.method public origin()Lcom/sightcall/universal/media/Metadata$Origin;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->origin:Lcom/sightcall/universal/media/Metadata$Origin;

    return-object p0
.end method

.method public pathName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->pathName:Ljava/lang/String;

    return-object p0
.end method

.method public reference()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    return-object p0
.end method

.method public setCloudGroup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->cloudGroup:Ljava/lang/String;

    return-void
.end method

.method public setNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/media/Metadata;->number:I

    return-void
.end method

.method public setUploadToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->uploadToken:Ljava/lang/String;

    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/media/Metadata;->uploadUrl:Ljava/lang/String;

    return-void
.end method

.method public storage()Lcom/sightcall/universal/media/Metadata$Storage;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->storage:Lcom/sightcall/universal/media/Metadata$Storage;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Storage;->DEFAULT:Lcom/sightcall/universal/media/Metadata$Storage;

    return-object p0
.end method

.method public timecode()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/media/Metadata;->timecode:J

    return-wide v0
.end method

.method public timestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    return-wide v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/Metadata;

    invoke-static {v0, p0}, Lcom/sightcall/universal/model/Moshi;->toJson(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uploadToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->uploadToken:Ljava/lang/String;

    return-object p0
.end method

.method public uploadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/media/Metadata;->uploadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public usecaseId()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/media/Metadata;->usecaseId:I

    return p0
.end method
