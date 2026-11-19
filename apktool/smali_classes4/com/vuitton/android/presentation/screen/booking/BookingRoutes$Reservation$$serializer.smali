.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/booking/BookingRoutes.Reservation.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
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


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->a:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.presentation.screen.booking.BookingRoutes.Reservation"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "experienceId"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "prebookId"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAdditional"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v5, v1

    move v8, v5

    move-object v6, v2

    move-object v7, v6

    :goto_0
    if-eqz v3, :cond_8

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    if-eqz v4, :cond_4

    if-eq v4, v0, :cond_1

    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    invoke-interface {p1, p0, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v8

    or-int/lit8 v5, v5, 0x4

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lb21;->l(I)V

    return-object v2

    :cond_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;

    if-eqz v7, :cond_2

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v9, v7}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    invoke-interface {p1, p0, v0, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    move-object v7, v4

    goto :goto_2

    :cond_3
    move-object v7, v2

    :goto_2
    or-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;

    if-eqz v6, :cond_5

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v9, v6}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v9, v2

    :goto_3
    invoke-interface {p1, p0, v1, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->a:Ljava/lang/String;

    move-object v6, v4

    goto :goto_4

    :cond_6
    move-object v6, v2

    :goto_4
    or-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    move v3, v1

    goto :goto_0

    :cond_8
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;-><init>(ILjava/lang/String;Ljava/lang/String;ZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;

    iget-object v1, p2, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;

    invoke-direct {v3, v1}, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    :goto_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;

    if-eqz p2, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    invoke-direct {v1, p2}, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 p2, 0x1

    invoke-interface {p1, p0, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    const/4 p2, 0x2

    invoke-interface {p1, p0, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_4
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 3

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$$serializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method
