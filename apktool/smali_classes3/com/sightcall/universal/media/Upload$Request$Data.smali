.class public Lcom/sightcall/universal/media/Upload$Request$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/Upload$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# static fields
.field private static final BASE64_ANDROID:Ljava/lang/String; = "iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAACVBMVEWkxjn///+qykWo8KzNAAAAM0lEQVQYlWNgBAIGRkY4BWEzMDEAAbIomA9XwQAHuARQAFgvQgUSSYkAke4AMZH9glcAAER6AHsbcXoqAAAAAElFTkSuQmCC"

.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ELAPSED_TIME_FORMAT:Ljava/lang/String; = "%02d:%02d:%02d"


# instance fields
.field final caseReportId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "case_id"
    .end annotation
.end field

.field final content:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "content"
    .end annotation
.end field

.field final lat:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "latitude"
    .end annotation
.end field

.field final lng:Ljava/lang/Double;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "longitude"
    .end annotation
.end field

.field final origin:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "origin"
    .end annotation
.end field

.field final reference:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reference"
    .end annotation
.end field

.field final timecode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "call_duration"
    .end annotation
.end field

.field final timestamp:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "timestamp"
    .end annotation
.end field

.field final usecaseId:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usecase"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sightcall/universal/media/Upload$Request$Data;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/sightcall/universal/media/Metadata;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p1, Lcom/sightcall/universal/media/Metadata;->timestamp:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iget v1, p1, Lcom/sightcall/universal/media/Metadata;->usecaseId:I

    iput v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->usecaseId:I

    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->content:Ljava/lang/String;

    iget-wide v1, p1, Lcom/sightcall/universal/media/Metadata;->timecode:J

    invoke-static {v1, v2}, Lcom/sightcall/universal/media/Upload$Request$Data;->elapsedTime(J)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->timecode:Ljava/lang/String;

    iget-object p2, p1, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->reference:Ljava/lang/String;

    iget-object p2, p1, Lcom/sightcall/universal/media/Metadata;->caseReportId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->caseReportId:Ljava/lang/String;

    iget-object p2, p1, Lcom/sightcall/universal/media/Metadata;->origin:Lcom/sightcall/universal/media/Metadata$Origin;

    invoke-static {p2}, Lcom/sightcall/universal/media/Upload$Request$Data;->parseOrigin(Lcom/sightcall/universal/media/Metadata$Origin;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->origin:Ljava/lang/String;

    iget-wide v1, p1, Lcom/sightcall/universal/media/Metadata;->lat:D

    const-wide/16 v3, 0x0

    cmpl-double p2, v1, v3

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v5

    :goto_0
    iput-object p2, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->lat:Ljava/lang/Double;

    iget-wide p1, p1, Lcom/sightcall/universal/media/Metadata;->lng:D

    cmpl-double v1, p1, v3

    if-eqz v1, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :cond_1
    iput-object v5, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->lng:Ljava/lang/Double;

    sget-object p1, Lcom/sightcall/universal/media/Upload$Request$Data;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public static elapsedTime(J)Ljava/lang/String;
    .locals 7

    const-wide/32 v0, 0x36ee80

    div-long v0, p0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long v3, p0, v3

    const-wide/32 v5, 0xea60

    div-long/2addr v3, v5

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr p0, v5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long/2addr p0, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr p0, v5

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02d:%02d:%02d"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseOrigin(Lcom/sightcall/universal/media/Metadata$Origin;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/Upload$1;->$SwitchMap$com$sightcall$universal$media$Metadata$Origin:[I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/media/Metadata$Origin;->UNKNOWN:Lcom/sightcall/universal/media/Metadata$Origin;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const-string p0, ""

    return-object p0

    :cond_1
    const-string p0, "url"

    return-object p0

    :cond_2
    const-string p0, "picture"

    return-object p0

    :cond_3
    const-string p0, "video"

    return-object p0

    :cond_4
    const-string p0, "photo"

    return-object p0

    :cond_5
    const-string p0, "camera"

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data{usecaseId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->usecaseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', caseReportId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->caseReportId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', reference=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->lat:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->lng:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->timestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', timecode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/media/Upload$Request$Data;->timecode:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
