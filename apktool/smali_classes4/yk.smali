.class public final synthetic Lyk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;II)V
    .locals 0

    iput p3, p0, Lyk;->b:I

    iput-object p1, p0, Lyk;->c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lyk;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Lyk;->c:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/capucine/CertificateCapucineScreenKt;->c(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/capucine/CertificateCapucineScreenKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/capucine/CertificateCapucineScreenKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
