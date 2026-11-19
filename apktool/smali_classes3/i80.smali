.class public final synthetic Li80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

.field public final synthetic d:Landroidx/compose/ui/Modifier;

.field public final synthetic e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZII)V
    .locals 0

    iput p8, p0, Li80;->b:I

    iput-object p1, p0, Li80;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iput-object p2, p0, Li80;->d:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Li80;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iput-object p4, p0, Li80;->f:Ljava/lang/String;

    iput-boolean p5, p0, Li80;->g:Z

    iput-boolean p6, p0, Li80;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Li80;->b:I

    const v1, 0x30001

    packed-switch v0, :pswitch_data_0

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v3

    iget-object v2, p0, Li80;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iget-object v5, p0, Li80;->d:Landroidx/compose/ui/Modifier;

    iget-object v6, p0, Li80;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iget-object v7, p0, Li80;->f:Ljava/lang/String;

    iget-boolean v8, p0, Li80;->g:Z

    iget-boolean v9, p0, Li80;->h:Z

    invoke-virtual/range {v2 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->d(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    iget-object v0, p0, Li80;->c:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    iget-object v3, p0, Li80;->d:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Li80;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    iget-object v5, p0, Li80;->f:Ljava/lang/String;

    iget-boolean v6, p0, Li80;->g:Z

    iget-boolean v7, p0, Li80;->h:Z

    invoke-virtual/range {v0 .. v7}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
