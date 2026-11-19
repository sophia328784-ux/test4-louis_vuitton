.class public final Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GiftMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$$serializer;,
        Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B-\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;",
        "Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute;",
        "",
        "draftText",
        "",
        "isBlank",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->Companion:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-ne v0, p4, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$$serializer;->a:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", isBlank="

    const-string v1, ")"

    const-string v2, "GiftMessage(draftText="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$GiftMessage;->b:Z

    invoke-static {v2, v3, v0, v1, p0}, Ld21;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
