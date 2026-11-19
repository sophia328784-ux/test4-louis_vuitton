.class public final Lkotlinx/datetime/format/DateTimeComponents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/format/DateTimeComponents$Companion;,
        Lkotlinx/datetime/format/DateTimeComponents$Formats;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0013\u0008\u0000\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateTimeComponents;",
        "",
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "contents",
        "<init>",
        "(Lkotlinx/datetime/format/DateTimeComponentsContents;)V",
        "Companion",
        "Formats",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lkotlinx/datetime/format/DateTimeComponents$Companion;

.field public static final synthetic c:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Lkotlinx/datetime/format/DateTimeComponentsContents;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v1, Lkotlinx/datetime/format/DateTimeComponents;

    const-string v2, "monthNumber"

    const-string v3, "getMonthNumber()Ljava/lang/Integer;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v0}, Lkotlin/jvm/internal/ReflectionFactory;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const-string v3, "dayOfMonth"

    const-string v5, "getDayOfMonth()Ljava/lang/Integer;"

    invoke-static {v1, v3, v5, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v3

    const-string v5, "dayOfYear"

    const-string v6, "getDayOfYear()Ljava/lang/Integer;"

    invoke-static {v1, v5, v6, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v5

    const-string v6, "hour"

    const-string v7, "getHour()Ljava/lang/Integer;"

    invoke-static {v1, v6, v7, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v6

    const-string v7, "hourOfAmPm"

    const-string v8, "getHourOfAmPm()Ljava/lang/Integer;"

    invoke-static {v1, v7, v8, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v7

    const-string v8, "minute"

    const-string v9, "getMinute()Ljava/lang/Integer;"

    invoke-static {v1, v8, v9, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v8

    const-string v9, "second"

    const-string v10, "getSecond()Ljava/lang/Integer;"

    invoke-static {v1, v9, v10, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v9

    const-string v10, "offsetHours"

    const-string v11, "getOffsetHours()Ljava/lang/Integer;"

    invoke-static {v1, v10, v11, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v10

    const-string v11, "offsetMinutesOfHour"

    const-string v12, "getOffsetMinutesOfHour()Ljava/lang/Integer;"

    invoke-static {v1, v11, v12, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v11

    const-string v12, "offsetSecondsOfMinute"

    const-string v13, "getOffsetSecondsOfMinute()Ljava/lang/Integer;"

    invoke-static {v1, v12, v13, v4, v2}, Lcj;->r(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/ReflectionFactory;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [Lkotlin/reflect/KProperty;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v3, v2, v0

    const/4 v0, 0x2

    aput-object v5, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v8, v2, v0

    const/4 v0, 0x6

    aput-object v9, v2, v0

    const/4 v0, 0x7

    aput-object v10, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v1, v2, v0

    sput-object v2, Lkotlinx/datetime/format/DateTimeComponents;->c:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/format/DateTimeComponents$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/format/DateTimeComponents;->b:Lkotlinx/datetime/format/DateTimeComponents$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lkotlinx/datetime/format/DateTimeComponents;-><init>(Lkotlinx/datetime/format/DateTimeComponentsContents;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/datetime/format/DateTimeComponentsContents;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/datetime/format/DateTimeComponents;->a:Lkotlinx/datetime/format/DateTimeComponentsContents;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$monthNumber$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v4, "getMonthNumber()Ljava/lang/Integer;"

    const/4 v5, 0x0

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v3, "monthNumber"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$dayOfMonth$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v4, "getDayOfMonth()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v3, "dayOfMonth"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/ThreeDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$dayOfYear$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v4, "getDayOfYear()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalDate;

    const-string v3, "dayOfYear"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/ThreeDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$hour$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v4, "getHour()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v3, "hour"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$hourOfAmPm$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v4, "getHourOfAmPm()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v3, "hourOfAmPm"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$minute$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v4, "getMinute()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v3, "minute"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$second$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v4, "getSecond()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteLocalTime;

    const-string v3, "second"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$offsetHours$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v4, "getTotalHoursAbs()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v3, "totalHoursAbs"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$offsetMinutesOfHour$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v4, "getMinutesOfHour()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v3, "minutesOfHour"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    new-instance p0, Lkotlinx/datetime/format/TwoDigitNumber;

    new-instance v0, Lkotlinx/datetime/format/DateTimeComponents$offsetSecondsOfMinute$2;

    iget-object v1, p1, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v4, "getSecondsOfMinute()Ljava/lang/Integer;"

    const-class v2, Lkotlinx/datetime/format/IncompleteUtcOffset;

    const-string v3, "secondsOfMinute"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/TwoDigitNumber;-><init>(Lkotlin/reflect/KMutableProperty0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/datetime/format/DateTimeComponentsContents;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 200
    new-instance v0, Lkotlinx/datetime/format/DateTimeComponentsContents;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lkotlinx/datetime/format/DateTimeComponentsContents;-><init>(Lkotlinx/datetime/format/IncompleteLocalDate;Lkotlinx/datetime/format/IncompleteLocalTime;Lkotlinx/datetime/format/IncompleteUtcOffset;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/datetime/format/DateTimeComponents;-><init>(Lkotlinx/datetime/format/DateTimeComponentsContents;)V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/datetime/Instant;
    .locals 11

    const-string v1, "The parsed date is outside the range representable by Instant"

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponents;->a:Lkotlinx/datetime/format/DateTimeComponentsContents;

    iget-object v0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->c:Lkotlinx/datetime/format/IncompleteUtcOffset;

    invoke-virtual {v0}, Lkotlinx/datetime/format/IncompleteUtcOffset;->a()Lkotlinx/datetime/UtcOffset;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->b:Lkotlinx/datetime/format/IncompleteLocalTime;

    invoke-virtual {v2}, Lkotlinx/datetime/format/IncompleteLocalTime;->b()Lkotlinx/datetime/LocalTime;

    move-result-object v3

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsContents;->a:Lkotlinx/datetime/format/IncompleteLocalDate;

    new-instance v4, Lkotlinx/datetime/format/IncompleteLocalDate;

    iget-object v5, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    iget-object v6, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->b:Ljava/lang/Integer;

    iget-object v7, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->c:Ljava/lang/Integer;

    iget-object v8, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->d:Ljava/lang/Integer;

    iget-object v9, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->e:Ljava/lang/Integer;

    invoke-direct/range {v4 .. v9}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iget-object v5, v4, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    const-string v6, "year"

    invoke-static {v5, v6}, Lkotlinx/datetime/format/LocalDateFormatKt;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    rem-int/lit16 v5, v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    :try_start_0
    iget-object p0, p0, Lkotlinx/datetime/format/IncompleteLocalDate;->a:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/lit16 p0, p0, 0x2710

    int-to-long v5, p0

    const-wide v7, 0x497968bd80L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v5

    invoke-virtual {v4}, Lkotlinx/datetime/format/IncompleteLocalDate;->a()Lkotlinx/datetime/LocalDate;

    move-result-object p0

    iget-object p0, p0, Lkotlinx/datetime/LocalDate;->b:Ljava/time/LocalDate;

    invoke-virtual {p0}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long p0, v7, v9

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/32 v9, -0x80000000

    cmp-long p0, v7, v9

    if-gez p0, :cond_1

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_1
    long-to-int p0, v7

    :goto_0
    int-to-long v7, p0

    const-wide/32 v9, 0x15180

    mul-long/2addr v7, v9

    iget-object p0, v3, Lkotlinx/datetime/LocalTime;->b:Ljava/time/LocalTime;

    invoke-virtual {p0}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v7, v3

    iget-object p0, v0, Lkotlinx/datetime/UtcOffset;->a:Ljava/time/ZoneOffset;

    invoke-virtual {p0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object p0, Lkotlinx/datetime/Instant;->Companion:Lkotlinx/datetime/Instant$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlinx/datetime/Instant;->c:Lkotlinx/datetime/Instant;

    iget-object p0, p0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-ltz p0, :cond_6

    sget-object p0, Lkotlinx/datetime/Instant;->d:Lkotlinx/datetime/Instant;

    iget-object p0, p0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {p0}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-gtz p0, :cond_6

    iget-object p0, v2, Lkotlinx/datetime/format/IncompleteLocalTime;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    int-to-long v0, p0

    :try_start_1
    new-instance p0, Lkotlinx/datetime/Instant;

    invoke-static {v3, v4, v0, v1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, v0}, Lkotlinx/datetime/Instant;-><init>(Ljava/time/Instant;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    instance-of v0, p0, Ljava/lang/ArithmeticException;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/time/DateTimeException;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    throw p0

    :cond_4
    :goto_2
    const-wide/16 v0, 0x0

    cmp-long p0, v3, v0

    if-lez p0, :cond_5

    sget-object p0, Lkotlinx/datetime/Instant;->d:Lkotlinx/datetime/Instant;

    goto :goto_3

    :cond_5
    sget-object p0, Lkotlinx/datetime/Instant;->c:Lkotlinx/datetime/Instant;

    :goto_3
    return-object p0

    :cond_6
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {p0, v1}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance v0, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {v0, v1, p0}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
