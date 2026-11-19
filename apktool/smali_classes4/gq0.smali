.class public final synthetic Lgq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;I)V
    .locals 0

    iput p5, p0, Lgq0;->b:I

    iput-boolean p1, p0, Lgq0;->c:Z

    iput-object p2, p0, Lgq0;->d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iput-object p3, p0, Lgq0;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iput-object p4, p0, Lgq0;->f:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lgq0;->b:I

    iget-object v1, p0, Lgq0;->f:Ljava/util/List;

    iget-object v2, p0, Lgq0;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v3, p0, Lgq0;->d:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-boolean p0, p0, Lgq0;->c:Z

    packed-switch v0, :pswitch_data_0

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    if-eqz p0, :cond_1

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    if-eqz p0, :cond_2

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {v2, p0, v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
