.class public final Lcom/sightcall/universal/internal/model/DataChannelParser$Location;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/DataChannelParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# instance fields
.field public final accuracy:I

.field public final lat:D

.field public final lng:D

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(DDJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->lat:D

    iput-wide p3, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->lng:D

    iput-wide p5, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->timestamp:J

    iput p7, p0, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->accuracy:I

    return-void
.end method

.method public static format(DDLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p4, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.6f:%.6f|%s|%d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/sightcall/universal/internal/model/DataChannelParser$Location;
    .locals 12

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-gtz v0, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v0, 0x1

    aget-object v1, v1, v0

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    array-length v4, p0

    if-le v4, v0, :cond_3

    :try_start_1
    sget-object v4, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aget-object v0, p0, v0

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    move-wide v9, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :goto_1
    array-length v0, p0

    if-le v0, v3, :cond_4

    :try_start_2
    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move v11, p0

    goto :goto_3

    :catch_1
    :cond_4
    const/4 p0, -0x1

    goto :goto_2

    :goto_3
    new-instance v4, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;

    invoke-direct/range {v4 .. v11}, Lcom/sightcall/universal/internal/model/DataChannelParser$Location;-><init>(DDJI)V

    return-object v4

    :catch_2
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method
