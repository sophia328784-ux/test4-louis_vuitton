.class final Landroidx/compose/material3/DatePickerKt$DatePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Landroidx/compose/material3/DatePickerState;

.field public final synthetic c:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic d:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/DatePickerState;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/DatePickerColors;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->b:Landroidx/compose/material3/DatePickerState;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->c:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p3, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->d:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v7, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/DatePickerDefaults;->a:Landroidx/compose/material3/DatePickerDefaults;

    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->b:Landroidx/compose/material3/DatePickerState;

    invoke-interface {p1}, Landroidx/compose/material3/DatePickerState;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1}, Landroidx/compose/material3/DatePickerState;->g()I

    move-result v2

    sget-object p1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    sget-object p2, Landroidx/compose/material3/DatePickerKt;->f:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    iget-object p1, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->d:Landroidx/compose/material3/DatePickerColors;

    iget-wide v5, p1, Landroidx/compose/material3/DatePickerColors;->c:J

    const v8, 0x30c00

    iget-object v3, p0, Landroidx/compose/material3/DatePickerKt$DatePicker$3;->c:Landroidx/compose/material3/DatePickerFormatter;

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material3/DatePickerDefaults;->a(Ljava/lang/Long;ILandroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
