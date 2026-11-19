.class public final synthetic Lkl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput p5, p0, Lkl;->b:I

    iput-object p1, p0, Lkl;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iput-object p2, p0, Lkl;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p3, p0, Lkl;->e:Lkotlin/jvm/functions/Function1;

    iput p4, p0, Lkl;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lkl;->b:I

    iget v1, p0, Lkl;->f:I

    iget-object v2, p0, Lkl;->e:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lkl;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p0, p0, Lkl;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    sget-object p2, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    or-int/lit8 p2, v1, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-virtual {p0, v3, v2, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
