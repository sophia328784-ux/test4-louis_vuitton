.class public final Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldCustom;
.super Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001a\u0012\u0011\u0010\u0005\u001a\r\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0002\u0008\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldCustom;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;",
        "Lkotlin/Function0;",
        "",
        "Landroidx/compose/runtime/Composable;",
        "composable",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldType;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFormFieldCustom;->a:Lkotlin/jvm/functions/Function2;

    return-void
.end method
