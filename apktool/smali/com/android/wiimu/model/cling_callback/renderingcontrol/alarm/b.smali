.class public Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;,
        Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;,
        Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "50"

.field public static final j:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

.field private g:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

.field private h:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    const-string v1, "0:0:0:0:0:0:0"

    iput-object v1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d:Ljava/lang/String;

    const-string v0, "50"

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e:Ljava/lang/String;

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->g:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    sget-object v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->b:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->h:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-static {}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    return-void
.end method

.method private static a(IIIIII)Ljava/lang/String;
    .locals 3

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    const/16 v2, 0x9

    if-ge p1, v2, :cond_0

    .line 261
    invoke-static {p1, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p2, v2, :cond_1

    .line 263
    invoke-static {p2, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 264
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p3, v2, :cond_2

    .line 265
    invoke-static {p3, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 266
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p4, v2, :cond_3

    .line 267
    invoke-static {p4, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 268
    :cond_3
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge p5, v2, :cond_4

    .line 269
    invoke-static {p5, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 270
    :cond_4
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2

    .line 271
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 272
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<AlarmInfo>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Name>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Time>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Time>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->k()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c:Ljava/lang/String;

    sget-object v3, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->c:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v1, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;->d:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<Trigger>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</Trigger>"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<DaysSpecial>"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</DaysSpecial>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Method>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->i()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Method>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Context>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Context>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Volume>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Volume>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<Enable>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</Enable>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "</AlarmInfo>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    const-string p1, "UTC"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 276
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    return-object p0

    .line 278
    :cond_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 280
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    .line 281
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()J
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v1

    neg-int v1, v2

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 2

    .line 29
    invoke-static {}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b()J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(IIIIII)V
    .locals 0

    .line 30
    invoke-static/range {p1 .. p6}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(IIIIII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0, v0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;
    .locals 2

    .line 282
    new-instance v0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;

    invoke-direct {v0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;-><init>()V

    .line 283
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->i()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->k()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    return-void
.end method

.method public a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->g:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    return-void
.end method

.method public a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->h:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$a;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->g:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$b;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public k()Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->h:Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b$c;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;->a(Lcom/android/wiimu/model/cling_callback/renderingcontrol/alarm/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
