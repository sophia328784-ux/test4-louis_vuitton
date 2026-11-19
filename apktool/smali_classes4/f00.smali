.class public final synthetic Lf00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iput-boolean p2, p0, Lf00;->c:Z

    iput-boolean p3, p0, Lf00;->d:Z

    iput-boolean p4, p0, Lf00;->e:Z

    iput-boolean p5, p0, Lf00;->f:Z

    iput-object p6, p0, Lf00;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lf00;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lf00;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lf00;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lf00;->k:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput p11, p0, Lf00;->l:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lf00;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lf00;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iget-boolean v1, p0, Lf00;->c:Z

    iget-boolean v2, p0, Lf00;->d:Z

    iget-boolean v3, p0, Lf00;->e:Z

    iget-boolean v4, p0, Lf00;->f:Z

    iget-object v5, p0, Lf00;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lf00;->h:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lf00;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lf00;->j:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lf00;->k:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/components/fields/FormFieldPhoneKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;ZZZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
