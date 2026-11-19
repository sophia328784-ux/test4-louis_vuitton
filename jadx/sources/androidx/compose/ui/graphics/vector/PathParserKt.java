package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.Path;
import defpackage.v40;
import java.util.List;
import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PathParserKt {
    public static final void a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, boolean z, boolean z2) {
        double d8;
        double d9;
        double d10 = d5;
        double d11 = (d7 / 180.0d) * 3.141592653589793d;
        double dCos = Math.cos(d11);
        double dSin = Math.sin(d11);
        double d12 = ((d2 * dSin) + (d * dCos)) / d10;
        double d13 = ((d2 * dCos) + ((-d) * dSin)) / d6;
        double d14 = ((d4 * dSin) + (d3 * dCos)) / d10;
        double d15 = ((d4 * dCos) + ((-d3) * dSin)) / d6;
        double d16 = d12 - d14;
        double d17 = d13 - d15;
        double d18 = (d12 + d14) / 2.0d;
        double d19 = (d13 + d15) / 2.0d;
        double d20 = (d17 * d17) + (d16 * d16);
        if (d20 == 0.0d) {
            return;
        }
        double d21 = (1.0d / d20) - 0.25d;
        if (d21 < 0.0d) {
            double dSqrt = (float) (Math.sqrt(d20) / 1.99999d);
            a(path, d, d2, d3, d4, d10 * dSqrt, d6 * dSqrt, d7, z, z2);
            return;
        }
        double dSqrt2 = Math.sqrt(d21);
        double d22 = d16 * dSqrt2;
        double d23 = dSqrt2 * d17;
        if (z == z2) {
            d8 = d18 - d23;
            d9 = d19 + d22;
        } else {
            d8 = d18 + d23;
            d9 = d19 - d22;
        }
        double dAtan2 = Math.atan2(d13 - d9, d12 - d8);
        double dAtan3 = Math.atan2(d15 - d9, d14 - d8) - dAtan2;
        if (z2 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d24 = d8 * d10;
        double d25 = d9 * d6;
        double d26 = (d24 * dCos) - (d25 * dSin);
        double d27 = (d25 * dCos) + (d24 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan3 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(d11);
        double dSin2 = Math.sin(d11);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d28 = -d10;
        double d29 = d28 * dCos2;
        double d30 = d6 * dSin2;
        double d31 = (d29 * dSin3) - (d30 * dCos3);
        double d32 = d28 * dSin2;
        double d33 = d6 * dCos2;
        double d34 = (dCos3 * d33) + (dSin3 * d32);
        double d35 = dAtan3 / ((double) iCeil);
        double d36 = dAtan2;
        double d37 = d31;
        int i2 = 0;
        double d38 = d34;
        double d39 = d2;
        while (i2 < iCeil) {
            double d40 = d36 + d35;
            double dSin4 = Math.sin(d40);
            double dCos4 = Math.cos(d40);
            int i3 = iCeil;
            double d41 = (((d10 * dCos2) * dCos4) + d26) - (d30 * dSin4);
            double d42 = (d33 * dSin4) + (d10 * dSin2 * dCos4) + d27;
            double d43 = (d29 * dSin4) - (d30 * dCos4);
            double d44 = (dCos4 * d33) + (dSin4 * d32);
            double d45 = d40 - d36;
            double dTan = Math.tan(d45 / 2.0d);
            double dSqrt3 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d45)) / 3.0d;
            path.b((float) ((d37 * dSqrt3) + d), (float) ((d38 * dSqrt3) + d39), (float) (d41 - (dSqrt3 * d43)), (float) (d42 - (dSqrt3 * d44)), (float) d41, (float) d42);
            d35 = d35;
            d = d41;
            i2++;
            d32 = d32;
            dSin2 = dSin2;
            d26 = d26;
            d36 = d40;
            d38 = d44;
            d37 = d43;
            iCeil = i3;
            d39 = d42;
            d10 = d5;
        }
    }

    public static final void b(List list, Path path) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        List list2 = list;
        Path path2 = path;
        int iM = path2.m();
        path2.k();
        path2.h(iM);
        PathNode pathNode = list2.isEmpty() ? PathNode.Close.f9115c : (PathNode) list2.get(0);
        int size = list2.size();
        float f10 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        int i2 = 0;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        float f16 = 0.0f;
        while (i2 < size) {
            PathNode pathNode2 = (PathNode) list2.get(i2);
            if (pathNode2 instanceof PathNode.Close) {
                path2.close();
                size = size;
                f10 = f10;
                i2 = i2;
                pathNode2 = pathNode2;
                f11 = f15;
                f13 = f11;
                f12 = f16;
                f14 = f12;
            } else {
                if (pathNode2 instanceof PathNode.RelativeMoveTo) {
                    PathNode.RelativeMoveTo relativeMoveTo = (PathNode.RelativeMoveTo) pathNode2;
                    float f17 = relativeMoveTo.f9141c;
                    f13 += f17;
                    float f18 = relativeMoveTo.d;
                    f14 += f18;
                    path2.d(f17, f18);
                    f15 = f13;
                    f16 = f14;
                } else if (pathNode2 instanceof PathNode.MoveTo) {
                    PathNode.MoveTo moveTo = (PathNode.MoveTo) pathNode2;
                    float f19 = moveTo.f9122c;
                    float f20 = moveTo.d;
                    path2.a(f19, f20);
                    f14 = f20;
                    f16 = f14;
                    f13 = f19;
                    f15 = f13;
                } else if (pathNode2 instanceof PathNode.RelativeLineTo) {
                    PathNode.RelativeLineTo relativeLineTo = (PathNode.RelativeLineTo) pathNode2;
                    float f21 = relativeLineTo.d;
                    float f22 = relativeLineTo.f9140c;
                    path2.q(f22, f21);
                    f13 += f22;
                    f14 += f21;
                } else if (pathNode2 instanceof PathNode.LineTo) {
                    PathNode.LineTo lineTo = (PathNode.LineTo) pathNode2;
                    float f23 = lineTo.d;
                    float f24 = lineTo.f9121c;
                    path2.c(f24, f23);
                    f13 = f24;
                    f14 = f23;
                } else if (pathNode2 instanceof PathNode.RelativeHorizontalTo) {
                    float f25 = ((PathNode.RelativeHorizontalTo) pathNode2).f9139c;
                    path2.q(f25, f10);
                    f13 += f25;
                } else if (pathNode2 instanceof PathNode.HorizontalTo) {
                    float f26 = ((PathNode.HorizontalTo) pathNode2).f9120c;
                    path2.c(f26, f14);
                    f13 = f26;
                } else if (pathNode2 instanceof PathNode.RelativeVerticalTo) {
                    float f27 = ((PathNode.RelativeVerticalTo) pathNode2).f9149c;
                    path2.q(f10, f27);
                    f14 += f27;
                } else if (pathNode2 instanceof PathNode.VerticalTo) {
                    float f28 = ((PathNode.VerticalTo) pathNode2).f9150c;
                    path2.c(f13, f28);
                    f14 = f28;
                } else {
                    if (pathNode2 instanceof PathNode.RelativeCurveTo) {
                        PathNode.RelativeCurveTo relativeCurveTo = (PathNode.RelativeCurveTo) pathNode2;
                        path2.e(relativeCurveTo.f9135c, relativeCurveTo.d, relativeCurveTo.f9136e, relativeCurveTo.f9137f, relativeCurveTo.g, relativeCurveTo.f9138h);
                        f7 = relativeCurveTo.f9136e + f13;
                        f8 = relativeCurveTo.f9137f + f14;
                        f13 += relativeCurveTo.g;
                        f9 = relativeCurveTo.f9138h;
                    } else if (pathNode2 instanceof PathNode.CurveTo) {
                        PathNode.CurveTo curveTo = (PathNode.CurveTo) pathNode2;
                        path.b(curveTo.f9116c, curveTo.d, curveTo.f9117e, curveTo.f9118f, curveTo.g, curveTo.f9119h);
                        float f29 = curveTo.f9117e;
                        float f30 = curveTo.f9118f;
                        float f31 = curveTo.g;
                        float f32 = curveTo.f9119h;
                        f13 = f31;
                        f14 = f32;
                        size = size;
                        f10 = f10;
                        i2 = i2;
                        pathNode2 = pathNode2;
                        f11 = f29;
                        f12 = f30;
                    } else if (pathNode2 instanceof PathNode.RelativeReflectiveCurveTo) {
                        if (pathNode.f9108a) {
                            float f33 = f13 - f11;
                            f6 = f14 - f12;
                            f5 = f33;
                        } else {
                            f5 = f10;
                            f6 = f5;
                        }
                        PathNode.RelativeReflectiveCurveTo relativeReflectiveCurveTo = (PathNode.RelativeReflectiveCurveTo) pathNode2;
                        path.e(f5, f6, relativeReflectiveCurveTo.f9145c, relativeReflectiveCurveTo.d, relativeReflectiveCurveTo.f9146e, relativeReflectiveCurveTo.f9147f);
                        f7 = relativeReflectiveCurveTo.f9145c + f13;
                        f8 = relativeReflectiveCurveTo.d + f14;
                        f13 += relativeReflectiveCurveTo.f9146e;
                        f9 = relativeReflectiveCurveTo.f9147f;
                    } else {
                        if (pathNode2 instanceof PathNode.ReflectiveCurveTo) {
                            if (pathNode.f9108a) {
                                f13 = (f13 * 2.0f) - f11;
                                f14 = (2.0f * f14) - f12;
                            }
                            PathNode.ReflectiveCurveTo reflectiveCurveTo = (PathNode.ReflectiveCurveTo) pathNode2;
                            path.b(f13, f14, reflectiveCurveTo.f9126c, reflectiveCurveTo.d, reflectiveCurveTo.f9127e, reflectiveCurveTo.f9128f);
                            f4 = reflectiveCurveTo.f9126c;
                            float f34 = reflectiveCurveTo.d;
                            float f35 = reflectiveCurveTo.f9127e;
                            float f36 = reflectiveCurveTo.f9128f;
                            f13 = f35;
                            f14 = f36;
                            f12 = f34;
                        } else if (pathNode2 instanceof PathNode.RelativeQuadTo) {
                            PathNode.RelativeQuadTo relativeQuadTo = (PathNode.RelativeQuadTo) pathNode2;
                            float f37 = relativeQuadTo.f9144f;
                            float f38 = relativeQuadTo.f9143e;
                            float f39 = relativeQuadTo.d;
                            float f40 = relativeQuadTo.f9142c;
                            path.l(f40, f39, f38, f37);
                            float f41 = f40 + f13;
                            float f42 = f39 + f14;
                            f13 += f38;
                            f14 += f37;
                            f11 = f41;
                            f12 = f42;
                        } else if (pathNode2 instanceof PathNode.QuadTo) {
                            PathNode.QuadTo quadTo = (PathNode.QuadTo) pathNode2;
                            float f43 = quadTo.f9125f;
                            float f44 = quadTo.f9124e;
                            float f45 = quadTo.d;
                            f4 = quadTo.f9123c;
                            path.i(f4, f45, f44, f43);
                            f14 = f43;
                            f13 = f44;
                            f12 = f45;
                        } else if (pathNode2 instanceof PathNode.RelativeReflectiveQuadTo) {
                            if (pathNode.f9109b) {
                                f2 = f13 - f11;
                                f3 = f14 - f12;
                            } else {
                                f2 = f10;
                                f3 = f2;
                            }
                            PathNode.RelativeReflectiveQuadTo relativeReflectiveQuadTo = (PathNode.RelativeReflectiveQuadTo) pathNode2;
                            float f46 = relativeReflectiveQuadTo.d;
                            float f47 = relativeReflectiveQuadTo.f9148c;
                            path.l(f2, f3, f47, f46);
                            f4 = f2 + f13;
                            float f48 = f3 + f14;
                            f13 += f47;
                            f14 += f46;
                            f12 = f48;
                        } else if (pathNode2 instanceof PathNode.ReflectiveQuadTo) {
                            if (pathNode.f9109b) {
                                f13 = (f13 * 2.0f) - f11;
                                f14 = (2.0f * f14) - f12;
                            }
                            PathNode.ReflectiveQuadTo reflectiveQuadTo = (PathNode.ReflectiveQuadTo) pathNode2;
                            float f49 = reflectiveQuadTo.d;
                            float f50 = reflectiveQuadTo.f9129c;
                            path.i(f13, f14, f50, f49);
                            size = size;
                            f10 = f10;
                            i2 = i2;
                            f12 = f14;
                            pathNode2 = pathNode2;
                            f14 = f49;
                            f11 = f13;
                            f13 = f50;
                        } else if (pathNode2 instanceof PathNode.RelativeArcTo) {
                            PathNode.RelativeArcTo relativeArcTo = (PathNode.RelativeArcTo) pathNode2;
                            float f51 = relativeArcTo.f9133h + f13;
                            float f52 = relativeArcTo.f9134i + f14;
                            f10 = f10;
                            size = size;
                            i2 = i2;
                            a(path, f13, f14, f51, f52, relativeArcTo.f9130c, relativeArcTo.d, relativeArcTo.f9131e, relativeArcTo.f9132f, relativeArcTo.g);
                            f11 = f51;
                            f13 = f11;
                            f12 = f52;
                            f14 = f12;
                            pathNode2 = pathNode2;
                        } else {
                            size = size;
                            f10 = f10;
                            i2 = i2;
                            if (!(pathNode2 instanceof PathNode.ArcTo)) {
                                v40.g();
                                return;
                            }
                            PathNode.ArcTo arcTo = (PathNode.ArcTo) pathNode2;
                            float f53 = arcTo.f9114i;
                            float f54 = arcTo.f9113h;
                            pathNode2 = pathNode2;
                            a(path, f13, f14, f54, f53, arcTo.f9110c, arcTo.d, arcTo.f9111e, arcTo.f9112f, arcTo.g);
                            f12 = f53;
                            f14 = f12;
                            f11 = f54;
                            f13 = f11;
                        }
                        f11 = f4;
                    }
                    f14 += f9;
                    f11 = f7;
                    f12 = f8;
                }
                pathNode2 = pathNode2;
            }
            i2++;
            list2 = list;
            path2 = path;
            size = size;
            pathNode = pathNode2;
            f10 = f10;
        }
    }
}
