.class public final Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;
.super Lkotlinx/datetime/internal/format/parser/NumberConsumer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Receiver:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/datetime/internal/format/parser/NumberConsumer<",
        "TReceiver;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B3\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;",
        "Receiver",
        "Lkotlinx/datetime/internal/format/parser/NumberConsumer;",
        "",
        "minLength",
        "maxLength",
        "Lkotlinx/datetime/internal/format/parser/AssignableField;",
        "Lkotlinx/datetime/internal/DecimalFraction;",
        "setter",
        "",
        "name",
        "<init>",
        "(IILkotlinx/datetime/internal/format/parser/AssignableField;Ljava/lang/String;)V",
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


# instance fields
.field public final c:I

.field public final d:I

.field public final e:Lkotlinx/datetime/internal/format/parser/AssignableField;


# direct methods
.method public constructor <init>(IILkotlinx/datetime/internal/format/parser/AssignableField;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlinx/datetime/internal/format/parser/AssignableField<",
            "-TReceiver;",
            "Lkotlinx/datetime/internal/DecimalFraction;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-direct {p0, v1, p4, v0}, Lkotlinx/datetime/internal/format/parser/NumberConsumer;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->c:I

    iput p2, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->d:I

    iput-object p3, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->e:Lkotlinx/datetime/internal/format/parser/AssignableField;

    const/4 p3, 0x1

    const-string p4, " for field "

    if-gt p3, p1, :cond_2

    const/16 p3, 0xa

    if-ge p1, p3, :cond_2

    if-gt p1, p2, :cond_1

    if-ge p2, p3, :cond_1

    return-void

    :cond_1
    const-string p3, "Invalid maximum length "

    invoke-static {p2, p3, p4}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lkotlinx/datetime/internal/format/parser/NumberConsumer;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": expected "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "..9"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p2, "Invalid minimum length "

    invoke-static {p1, p2, p4}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lkotlinx/datetime/internal/format/parser/NumberConsumer;->b:Ljava/lang/String;

    const-string p2, ": expected 1..9"

    invoke-static {p0, p2, p1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILjava/lang/String;)Lkotlinx/datetime/internal/format/parser/NumberConsumptionError;
    .locals 4

    sub-int v0, p3, p2

    iget v1, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->c:I

    if-ge v0, v1, :cond_0

    new-instance p0, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooFewDigits;

    invoke-direct {p0, v1}, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooFewDigits;-><init>(I)V

    return-object p0

    :cond_0
    iget v1, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->d:I

    if-le v0, v1, :cond_1

    new-instance p0, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooManyDigits;

    invoke-direct {p0, v1}, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$TooManyDigits;-><init>(I)V

    return-object p0

    :cond_1
    new-instance v1, Lkotlinx/datetime/internal/DecimalFraction;

    const/4 v2, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    invoke-virtual {p4, p2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {v1, v2, v0}, Lkotlinx/datetime/internal/DecimalFraction;-><init>(II)V

    iget-object p0, p0, Lkotlinx/datetime/internal/format/parser/FractionPartConsumer;->e:Lkotlinx/datetime/internal/format/parser/AssignableField;

    invoke-interface {p0, p1, v1}, Lkotlinx/datetime/internal/format/parser/AssignableField;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p1, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$Conflicting;

    invoke-direct {p1, p0}, Lkotlinx/datetime/internal/format/parser/NumberConsumptionError$Conflicting;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
