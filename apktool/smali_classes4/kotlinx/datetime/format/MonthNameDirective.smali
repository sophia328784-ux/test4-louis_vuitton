.class final Lkotlinx/datetime/format/MonthNameDirective;
.super Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective<",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/datetime/format/MonthNameDirective;",
        "Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;",
        "Lkotlinx/datetime/format/DateFieldContainer;",
        "Lkotlinx/datetime/format/MonthNames;",
        "names",
        "<init>",
        "(Lkotlinx/datetime/format/MonthNames;)V",
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
.field public final d:Lkotlinx/datetime/format/MonthNames;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/format/MonthNames;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/datetime/format/DateFields;->a:Lkotlinx/datetime/internal/format/GenericFieldSpec;

    sget-object v0, Lkotlinx/datetime/format/DateFields;->b:Lkotlinx/datetime/internal/format/UnsignedFieldSpec;

    iget-object v1, p1, Lkotlinx/datetime/format/MonthNames;->a:Ljava/util/List;

    const-string v2, "monthName"

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/datetime/internal/format/NamedUnsignedIntFieldFormatDirective;-><init>(Lkotlinx/datetime/internal/format/UnsignedFieldSpec;Ljava/util/List;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/datetime/format/MonthNameDirective;->d:Lkotlinx/datetime/format/MonthNames;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lkotlinx/datetime/format/MonthNameDirective;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/datetime/format/MonthNameDirective;->d:Lkotlinx/datetime/format/MonthNames;

    iget-object p0, p0, Lkotlinx/datetime/format/MonthNames;->a:Ljava/util/List;

    check-cast p1, Lkotlinx/datetime/format/MonthNameDirective;

    iget-object p1, p1, Lkotlinx/datetime/format/MonthNameDirective;->d:Lkotlinx/datetime/format/MonthNames;

    iget-object p1, p1, Lkotlinx/datetime/format/MonthNames;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/MonthNameDirective;->d:Lkotlinx/datetime/format/MonthNames;

    iget-object p0, p0, Lkotlinx/datetime/format/MonthNames;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
