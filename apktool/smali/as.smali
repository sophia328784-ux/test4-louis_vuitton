.class public final synthetic Las;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/material3/SelectableDates;

.field public final synthetic f:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic g:Lkotlin/ranges/IntRange;

.field public final synthetic h:Landroidx/compose/material3/DatePickerColors;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Las;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Las;->c:J

    iput-object p4, p0, Las;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Las;->e:Landroidx/compose/material3/SelectableDates;

    iput-object p6, p0, Las;->f:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p7, p0, Las;->g:Lkotlin/ranges/IntRange;

    iput-object p8, p0, Las;->h:Landroidx/compose/material3/DatePickerColors;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x7

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Las;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Las;->c:J

    iget-object v3, p0, Las;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Las;->e:Landroidx/compose/material3/SelectableDates;

    iget-object v5, p0, Las;->f:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v6, p0, Las;->g:Lkotlin/ranges/IntRange;

    iget-object v7, p0, Las;->h:Landroidx/compose/material3/DatePickerColors;

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt;->n(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
