.class public final Lcom/vuitton/android/presentation/screen/certificates/model/AutomationTagsCertificate$EngravingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/certificates/model/AutomationTagsCertificate$EngravingItem",
        "",
        "",
        "position",
        "<init>",
        "(I)V",
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
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_view"

    const-string v1, "certificateEngravingItem_"

    invoke-static {p1, v1, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/AutomationTagsCertificate$EngravingItem;->a:Ljava/lang/String;

    return-void
.end method
