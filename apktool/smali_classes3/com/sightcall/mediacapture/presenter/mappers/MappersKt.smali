.class public final Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0003H\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0006*\u00020\u0007H\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "toTime",
        "",
        "",
        "",
        "toHumanReadableDuration",
        "toMediaCaptureError",
        "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toHumanReadableDuration(I)Ljava/lang/String;
    .locals 6

    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, v0}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sget-object p0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    sget-object p0, Lkotlin/time/DurationUnit;->HOURS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p0}, Lkotlin/time/Duration;->k(JLkotlin/time/DurationUnit;)J

    move-result-wide v2

    invoke-static {v0, v1}, Lkotlin/time/Duration;->f(J)I

    move-result p0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->h(J)I

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    const-string v4, " "

    if-lez v1, :cond_0

    const-string v1, "h"

    invoke-static {v2, v3, v4, v1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    if-lez p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "min"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-lez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Lkotlin/text/StringsKt;->d0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toMediaCaptureError(Lcom/sightcall/mediacapture/repo/MediaCaptureError;)Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureError$MediaCaptureException;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$MediaCaptureException;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$MediaCaptureException;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$ResizerLibError;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$ResizerLibError;

    return-object p0

    :cond_1
    instance-of p0, p0, Lcom/sightcall/mediacapture/repo/MediaCaptureError$VideoCaptureError;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$VideoCaptureError;->INSTANCE:Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError$VideoCaptureError;

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toTime(I)Ljava/lang/String;
    .locals 2

    int-to-long v0, p0

    .line 21
    invoke-static {v0, v1}, Lcom/sightcall/mediacapture/presenter/mappers/MappersKt;->toTime(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toTime(J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
