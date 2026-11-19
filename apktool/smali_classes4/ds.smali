.class public final synthetic Lds;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;I)V
    .locals 0

    const/4 p9, 0x0

    iput p9, p0, Lds;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds;->c:Ljava/lang/String;

    iput-object p2, p0, Lds;->i:Ljava/lang/Object;

    iput-boolean p3, p0, Lds;->d:Z

    iput-boolean p4, p0, Lds;->e:Z

    iput-object p5, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    iput-boolean p6, p0, Lds;->f:Z

    iput-object p7, p0, Lds;->h:Ljava/lang/Object;

    iput-object p8, p0, Lds;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 23
    const/4 p9, 0x2

    iput p9, p0, Lds;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds;->c:Ljava/lang/String;

    iput-object p2, p0, Lds;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Lds;->d:Z

    iput-boolean p4, p0, Lds;->e:Z

    iput-object p5, p0, Lds;->i:Ljava/lang/Object;

    iput-boolean p6, p0, Lds;->f:Z

    iput-object p7, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lds;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;ZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 24
    const/4 p9, 0x1

    iput p9, p0, Lds;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lds;->c:Ljava/lang/String;

    iput-object p2, p0, Lds;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Lds;->d:Z

    iput-boolean p4, p0, Lds;->e:Z

    iput-boolean p5, p0, Lds;->f:Z

    iput-object p6, p0, Lds;->i:Ljava/lang/Object;

    iput-object p7, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lds;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lds;->b:I

    iget-object v1, p0, Lds;->j:Ljava/lang/Object;

    iget-object v2, p0, Lds;->i:Ljava/lang/Object;

    iget-object v3, p0, Lds;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v11, v1

    check-cast v11, Lkotlin/jvm/functions/Function0;

    move-object v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x6001

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v13

    iget-object v4, p0, Lds;->c:Ljava/lang/String;

    iget-boolean v6, p0, Lds;->d:Z

    iget-boolean v7, p0, Lds;->e:Z

    iget-boolean v9, p0, Lds;->f:Z

    iget-object v10, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeSearchHeaderKt;->a(Ljava/lang/String;Ljava/lang/Integer;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Ljava/lang/Integer;

    move-object v5, v2

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lds;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lds;->d:Z

    move-object v1, v3

    iget-boolean v3, p0, Lds;->e:Z

    iget-boolean v4, p0, Lds;->f:Z

    iget-object v6, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PSPStoreModeHeaderKt;->a(Ljava/lang/String;Ljava/lang/Integer;ZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v2, Landroidx/compose/ui/Modifier;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    check-cast v7, Landroidx/compose/material3/DatePickerColors;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x31

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lds;->c:Ljava/lang/String;

    move-object v1, v2

    iget-boolean v2, p0, Lds;->d:Z

    iget-boolean v3, p0, Lds;->e:Z

    iget-object v4, p0, Lds;->g:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Lds;->f:Z

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/DatePickerKt;->m(Ljava/lang/String;Landroidx/compose/ui/Modifier;ZZLkotlin/jvm/functions/Function0;ZLjava/lang/String;Landroidx/compose/material3/DatePickerColors;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
