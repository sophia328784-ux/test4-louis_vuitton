.class final Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberTextField$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberTextField$1$1$1;->b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberTextField$1$1$1;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Unfocus;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->l:Lkotlin/text/Regex;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberTextField$1$1$1;->b:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->e()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField;->g()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormField$PhoneNumberTextField$1$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
