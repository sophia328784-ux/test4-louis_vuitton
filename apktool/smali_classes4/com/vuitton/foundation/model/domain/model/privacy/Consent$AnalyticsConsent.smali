.class public final Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;
.super Lcom/vuitton/foundation/model/domain/model/privacy/Consent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/privacy/Consent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalyticsConsent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;,
        Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000c2\u00020\u0001:\u0002\r\u000cB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B/\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/Consent;",
        "Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;",
        "consentValue",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V",
        "",
        "seen0",
        "value",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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
.field public static final Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Llp;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Llp;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    new-instance v3, Llp;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Llp;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p2, p4}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;-><init>(ILcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticsConsent(consentValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->d:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
