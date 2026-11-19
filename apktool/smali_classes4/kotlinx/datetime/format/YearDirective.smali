.class final Lkotlinx/datetime/format/YearDirective;
.super Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective<",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/datetime/format/YearDirective;",
        "Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/format/Padding;",
        "padding",
        "",
        "isYearOfEra",
        "<init>",
        "(Lkotlinx/datetime/format/Padding;Z)V",
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
.field public final f:Lkotlinx/datetime/format/Padding;

.field public final g:Z


# direct methods
.method public constructor <init>(Lkotlinx/datetime/format/Padding;Z)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/datetime/format/DateFields;->a:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    sget-object v2, Lkotlinx/datetime/format/DateFields;->a:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v1, Lkotlinx/datetime/format/Padding;->ZERO:Lkotlinx/datetime/format/Padding;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v0, Lkotlinx/datetime/format/Padding;->SPACE:Lkotlinx/datetime/format/Padding;

    if-ne p1, v0, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    :goto_1
    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/datetime/internal/format/SignedIntFieldFormatDirective;-><init>(Lkotlinx/datetime/internal/format/FieldSpec;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object p1, v1, Lkotlinx/datetime/format/YearDirective;->f:Lkotlinx/datetime/format/Padding;

    iput-boolean p2, v1, Lkotlinx/datetime/format/YearDirective;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/datetime/format/Padding;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/datetime/format/YearDirective;-><init>(Lkotlinx/datetime/format/Padding;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/datetime/format/YearDirective;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/datetime/format/YearDirective;

    iget-object v0, p1, Lkotlinx/datetime/format/YearDirective;->f:Lkotlinx/datetime/format/Padding;

    iget-object v1, p0, Lkotlinx/datetime/format/YearDirective;->f:Lkotlinx/datetime/format/Padding;

    if-ne v1, v0, :cond_0

    iget-boolean p0, p0, Lkotlinx/datetime/format/YearDirective;->g:Z

    iget-boolean p1, p1, Lkotlinx/datetime/format/YearDirective;->g:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/datetime/format/YearDirective;->f:Lkotlinx/datetime/format/Padding;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lkotlinx/datetime/format/YearDirective;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
