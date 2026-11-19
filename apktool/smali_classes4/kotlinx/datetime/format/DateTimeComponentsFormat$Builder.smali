.class public final Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
.implements Lkotlinx/datetime/format/AbstractWithDateTimeBuilder;
.implements Lkotlinx/datetime/format/AbstractWithOffsetBuilder;
.implements Lkotlinx/datetime/format/DateTimeFormatBuilder$WithDateTimeComponents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/format/DateTimeComponentsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder<",
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;",
        ">;",
        "Lkotlinx/datetime/format/AbstractWithDateTimeBuilder;",
        "Lkotlinx/datetime/format/AbstractWithOffsetBuilder;",
        "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithDateTimeComponents;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u00032\u00020\u00042\u00020\u0005B\u0015\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;",
        "Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;",
        "Lkotlinx/datetime/format/DateTimeComponentsContents;",
        "Lkotlinx/datetime/format/AbstractWithDateTimeBuilder;",
        "Lkotlinx/datetime/format/AbstractWithOffsetBuilder;",
        "Lkotlinx/datetime/format/DateTimeFormatBuilder$WithDateTimeComponents;",
        "Lkotlinx/datetime/internal/format/AppendableFormatStructure;",
        "actualBuilder",
        "<init>",
        "(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V",
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
.field public final a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/datetime/internal/format/AppendableFormatStructure<",
            "Lkotlinx/datetime/format/DateTimeComponentsContents;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;->b(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final c(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/MonthDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/MonthDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->t(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final d()V
    .locals 7

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/FractionalSecondDirective;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lkotlinx/datetime/format/FractionalSecondDirective;-><init>(IILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->v(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    return-void
.end method

.method public final e([Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;->a(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final f(Lkotlinx/datetime/format/DateTimeFormat;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lkotlinx/datetime/format/LocalDateFormat;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/datetime/format/LocalDateFormat;

    iget-object p1, p1, Lkotlinx/datetime/format/LocalDateFormat;->a:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->t(Lkotlinx/datetime/internal/format/FormatStructure;)V

    :cond_0
    return-void
.end method

.method public final g(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/UtcOffsetMinuteOfHourDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->u(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final h()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
    .locals 1

    new-instance p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;

    new-instance v0, Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-direct {v0}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;-><init>()V

    invoke-direct {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;-><init>(Lkotlinx/datetime/internal/format/AppendableFormatStructure;)V

    return-object p0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;->d(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/MinuteDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/MinuteDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->v(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    return-void
.end method

.method public final k(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/SecondDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/SecondDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->v(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    return-void
.end method

.method public final l(Lkotlinx/datetime/format/Padding;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/YearDirective;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lkotlinx/datetime/format/YearDirective;-><init>(Lkotlinx/datetime/format/Padding;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->t(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final m(Lkotlinx/datetime/format/UtcOffsetFormat;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lkotlinx/datetime/format/UtcOffsetFormat;->a:Lkotlinx/datetime/internal/format/CachedFormatStructure;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->u(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final n(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/HourDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/HourDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->v(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V

    return-void
.end method

.method public final o(Lkotlinx/datetime/format/DayOfWeekNames;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/DayOfWeekDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/DayOfWeekDirective;-><init>(Lkotlinx/datetime/format/DayOfWeekNames;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-virtual {p0, v0}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final p(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/DayDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/DayDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->t(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final q(Lkotlinx/datetime/format/MonthNames;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/MonthNameDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/MonthNameDirective;-><init>(Lkotlinx/datetime/format/MonthNames;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-virtual {p0, v0}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final r(Lkotlinx/datetime/format/Padding;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/SignedFormatStructure;

    new-instance v1, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v2, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;

    invoke-direct {v2, p1}, Lkotlinx/datetime/format/UtcOffsetWholeHoursDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v1, v2}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    const/4 p1, 0x1

    invoke-direct {v0, v1, p1}, Lkotlinx/datetime/internal/format/SignedFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FormatStructure;Z)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->u(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final s(Lkotlinx/datetime/format/Padding;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/datetime/internal/format/BasicFormatStructure;

    new-instance v1, Lkotlinx/datetime/format/UtcOffsetSecondOfMinuteDirective;

    invoke-direct {v1, p1}, Lkotlinx/datetime/format/UtcOffsetSecondOfMinuteDirective;-><init>(Lkotlinx/datetime/format/Padding;)V

    invoke-direct {v0, v1}, Lkotlinx/datetime/internal/format/BasicFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FieldFormatDirective;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->u(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final t(Lkotlinx/datetime/internal/format/FormatStructure;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final u(Lkotlinx/datetime/internal/format/FormatStructure;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public final v(Lkotlinx/datetime/internal/format/BasicFormatStructure;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/format/DateTimeComponentsFormat$Builder;->a:Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    invoke-virtual {p0, p1}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method
