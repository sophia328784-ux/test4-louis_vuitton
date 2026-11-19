.class public final synthetic Lgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Landroidx/compose/material3/internal/CalendarModel;

.field public final synthetic h:Lkotlin/ranges/IntRange;

.field public final synthetic i:Landroidx/compose/material3/DatePickerFormatter;

.field public final synthetic j:Landroidx/compose/material3/SelectableDates;

.field public final synthetic k:Landroidx/compose/material3/DatePickerColors;

.field public final synthetic l:Landroidx/compose/ui/focus/FocusRequester;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Long;JILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs;->b:Ljava/lang/Long;

    iput-wide p2, p0, Lgs;->c:J

    iput p4, p0, Lgs;->d:I

    iput-object p5, p0, Lgs;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lgs;->f:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lgs;->g:Landroidx/compose/material3/internal/CalendarModel;

    iput-object p8, p0, Lgs;->h:Lkotlin/ranges/IntRange;

    iput-object p9, p0, Lgs;->i:Landroidx/compose/material3/DatePickerFormatter;

    iput-object p10, p0, Lgs;->j:Landroidx/compose/material3/SelectableDates;

    iput-object p11, p0, Lgs;->k:Landroidx/compose/material3/DatePickerColors;

    iput-object p12, p0, Lgs;->l:Landroidx/compose/ui/focus/FocusRequester;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v0, p0, Lgs;->b:Ljava/lang/Long;

    iget-wide v1, p0, Lgs;->c:J

    iget v3, p0, Lgs;->d:I

    iget-object v4, p0, Lgs;->e:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lgs;->f:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lgs;->g:Landroidx/compose/material3/internal/CalendarModel;

    iget-object v7, p0, Lgs;->h:Lkotlin/ranges/IntRange;

    iget-object v8, p0, Lgs;->i:Landroidx/compose/material3/DatePickerFormatter;

    iget-object v9, p0, Lgs;->j:Landroidx/compose/material3/SelectableDates;

    iget-object v10, p0, Lgs;->k:Landroidx/compose/material3/DatePickerColors;

    iget-object v11, p0, Lgs;->l:Landroidx/compose/ui/focus/FocusRequester;

    invoke-static/range {v0 .. v13}, Landroidx/compose/material3/DatePickerKt;->k(Ljava/lang/Long;JILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/material3/internal/CalendarModel;Lkotlin/ranges/IntRange;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/material3/SelectableDates;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/ui/focus/FocusRequester;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
