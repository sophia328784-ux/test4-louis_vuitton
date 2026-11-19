.class public abstract Lkotlinx/datetime/DateTimeUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/DateTimeUnit$Companion;,
        Lkotlinx/datetime/DateTimeUnit$DateBased;,
        Lkotlinx/datetime/DateTimeUnit$DayBased;,
        Lkotlinx/datetime/DateTimeUnit$MonthBased;,
        Lkotlinx/datetime/DateTimeUnit$TimeBased;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00022\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0002\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/datetime/DateTimeUnit;",
        "",
        "Companion",
        "DateBased",
        "DayBased",
        "MonthBased",
        "TimeBased",
        "Lkotlinx/datetime/DateTimeUnit$DateBased;",
        "Lkotlinx/datetime/DateTimeUnit$TimeBased;",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lkotlinx/datetime/serializers/DateTimeUnitSerializer;
.end annotation


# static fields
.field public static final Companion:Lkotlinx/datetime/DateTimeUnit$Companion;

.field public static final a:Lkotlinx/datetime/DateTimeUnit$DayBased;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/datetime/DateTimeUnit$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/datetime/DateTimeUnit;->Companion:Lkotlinx/datetime/DateTimeUnit$Companion;

    new-instance v0, Lkotlinx/datetime/DateTimeUnit$TimeBased;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/datetime/DateTimeUnit$TimeBased;-><init>(J)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->b(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->b(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->b(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->b(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    move-result-object v0

    invoke-virtual {v0, v1}, Lkotlinx/datetime/DateTimeUnit$TimeBased;->b(I)Lkotlinx/datetime/DateTimeUnit$TimeBased;

    new-instance v0, Lkotlinx/datetime/DateTimeUnit$DayBased;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$DayBased;-><init>(I)V

    sput-object v0, Lkotlinx/datetime/DateTimeUnit;->a:Lkotlinx/datetime/DateTimeUnit$DayBased;

    new-instance v2, Lkotlinx/datetime/DateTimeUnit$DayBased;

    iget v0, v0, Lkotlinx/datetime/DateTimeUnit$DayBased;->b:I

    const/4 v3, 0x7

    invoke-static {v0, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-direct {v2, v0}, Lkotlinx/datetime/DateTimeUnit$DayBased;-><init>(I)V

    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    new-instance v1, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    iget v0, v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;->b:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    invoke-direct {v1, v2}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    new-instance v1, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    invoke-direct {v1, v0}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    new-instance v0, Lkotlinx/datetime/DateTimeUnit$MonthBased;

    iget v1, v1, Lkotlinx/datetime/DateTimeUnit$MonthBased;->b:I

    const/16 v2, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    invoke-direct {v0, v1}, Lkotlinx/datetime/DateTimeUnit$MonthBased;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
