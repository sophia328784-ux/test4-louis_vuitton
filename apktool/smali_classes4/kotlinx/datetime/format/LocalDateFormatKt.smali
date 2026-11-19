.class public abstract Lkotlinx/datetime/format/LocalDateFormatKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "kotlinx-datetime"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlinx/datetime/format/IncompleteLocalDate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lkotlinx/datetime/format/LocalDateFormatKt$ISO_DATE$2;->c:Lkotlinx/datetime/format/LocalDateFormatKt$ISO_DATE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlinx/datetime/format/LocalDateFormatKt;->a:Lkotlin/Lazy;

    sget-object v0, Lkotlinx/datetime/format/LocalDateFormatKt$ISO_DATE_BASIC$2;->c:Lkotlinx/datetime/format/LocalDateFormatKt$ISO_DATE_BASIC$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lkotlinx/datetime/format/LocalDateFormatKt;->b:Lkotlin/Lazy;

    new-instance v1, Lkotlinx/datetime/format/IncompleteLocalDate;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lkotlinx/datetime/format/IncompleteLocalDate;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lkotlinx/datetime/format/LocalDateFormatKt;->c:Lkotlinx/datetime/format/IncompleteLocalDate;

    return-void
.end method

.method public static final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lkotlinx/datetime/DateTimeFormatException;

    const-string v0, " from the given input: the field "

    const-string v1, " is missing"

    const-string v2, "Can not create a "

    invoke-static {v2, p1, v0, p1, v1}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
