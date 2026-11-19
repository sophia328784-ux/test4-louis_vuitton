.class public abstract Lcom/vuitton/foundation/model/domain/model/privacy/Consent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \n2\u00020\u0001:\u0007\u000b\u000c\r\u000e\u000f\u0010\nB%\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u0082\u0001\u0006\u0011\u0012\u0013\u0014\u0015\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;",
        "",
        "",
        "seen0",
        "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;",
        "value",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "<init>",
        "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "FunctionalConsent",
        "AnalyticsConsent",
        "CustomisationConsent",
        "SocialConsent",
        "ChatConsent",
        "LucieLabsConsent",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

.field public static final b:[Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Llp;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Llp;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Lkotlin/Lazy;

    aput-object v1, v4, v2

    sput-object v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->b:[Lkotlin/Lazy;

    new-instance v1, Llp;

    invoke-direct {v1, v3}, Llp;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->c:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-void
.end method

.method public static final synthetic a(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->b:[Lkotlin/Lazy;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method
