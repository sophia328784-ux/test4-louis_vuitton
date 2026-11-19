.class public abstract Lcom/vuitton/foundation/util/JavaLocalDateTimeExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/foundation/util/JavaLocalDateTimeExt;",
        "",
        "util"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(ZLjava/lang/String;ZZI)Ljava/time/LocalDateTime;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x6

    const/4 v3, 0x3

    if-nez p3, :cond_5

    if-nez p2, :cond_5

    if-nez p0, :cond_0

    const-string p0, "yyyy-MM-dd\'T\'HH:mm"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto/16 :goto_1

    :cond_0
    if-eqz p4, :cond_4

    if-eq p4, v3, :cond_3

    if-eq p4, v2, :cond_2

    if-eq p4, v1, :cond_1

    :goto_0
    move-object p0, v0

    goto/16 :goto_1

    :cond_1
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto/16 :goto_1

    :cond_2
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto/16 :goto_1

    :cond_3
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto/16 :goto_1

    :cond_4
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto/16 :goto_1

    :cond_5
    if-eqz p3, :cond_b

    if-nez p0, :cond_6

    const-string p0, "yyyy-MM-dd\'T\'HH:mmZ"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_a

    if-eq p4, v3, :cond_9

    if-eq p4, v2, :cond_8

    if-eq p4, v1, :cond_7

    goto :goto_0

    :cond_7
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSSZ"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_8
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSZ"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_9
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_a
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_b
    if-nez p0, :cond_c

    const-string p0, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_c
    if-eqz p4, :cond_10

    if-eq p4, v3, :cond_f

    if-eq p4, v2, :cond_e

    if-eq p4, v1, :cond_d

    goto :goto_0

    :cond_d
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS\'Z\'"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_e
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS\'Z\'"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_f
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    goto :goto_1

    :cond_10
    const-string p0, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {p0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_11

    invoke-static {p1, p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0

    :cond_11
    return-object v0
.end method
