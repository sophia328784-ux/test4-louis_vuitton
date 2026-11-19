.class public abstract Landroidx/navigation/NavOptionsBuilderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "navigation-common_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;
    .locals 4

    new-instance v0, Landroidx/navigation/NavOptionsBuilder;

    invoke-direct {v0}, Landroidx/navigation/NavOptionsBuilder;-><init>()V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p0, v0, Landroidx/navigation/NavOptionsBuilder;->b:Z

    iget-object v1, v0, Landroidx/navigation/NavOptionsBuilder;->a:Landroidx/navigation/NavOptions$Builder;

    iput-boolean p0, v1, Landroidx/navigation/NavOptions$Builder;->a:Z

    iget-boolean p0, v0, Landroidx/navigation/NavOptionsBuilder;->c:Z

    iput-boolean p0, v1, Landroidx/navigation/NavOptions$Builder;->b:Z

    iget-object p0, v0, Landroidx/navigation/NavOptionsBuilder;->g:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    if-eqz p0, :cond_0

    iget-boolean v2, v0, Landroidx/navigation/NavOptionsBuilder;->e:Z

    iget-boolean v0, v0, Landroidx/navigation/NavOptionsBuilder;->f:Z

    iput-object p0, v1, Landroidx/navigation/NavOptions$Builder;->d:Ljava/lang/Object;

    const-class p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$NfcScan;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, p0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/SerializersKt;->b(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    invoke-static {p0}, Landroidx/navigation/serialization/RouteSerializerKt;->b(Lkotlinx/serialization/KSerializer;)I

    move-result p0

    iput p0, v1, Landroidx/navigation/NavOptions$Builder;->c:I

    iput-boolean v2, v1, Landroidx/navigation/NavOptions$Builder;->e:Z

    iput-boolean v0, v1, Landroidx/navigation/NavOptions$Builder;->f:Z

    goto :goto_0

    :cond_0
    iget p0, v0, Landroidx/navigation/NavOptionsBuilder;->d:I

    iget-boolean v2, v0, Landroidx/navigation/NavOptionsBuilder;->e:Z

    iget-boolean v0, v0, Landroidx/navigation/NavOptionsBuilder;->f:Z

    iput p0, v1, Landroidx/navigation/NavOptions$Builder;->c:I

    iput-boolean v2, v1, Landroidx/navigation/NavOptions$Builder;->e:Z

    iput-boolean v0, v1, Landroidx/navigation/NavOptions$Builder;->f:Z

    :goto_0
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->a()Landroidx/navigation/NavOptions;

    move-result-object p0

    return-object p0
.end method
