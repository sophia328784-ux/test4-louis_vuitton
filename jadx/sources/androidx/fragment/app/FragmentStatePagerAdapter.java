package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment;
import defpackage.fc;
import defpackage.mt;
import defpackage.pq0;
import defpackage.tr;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class FragmentStatePagerAdapter extends PagerAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FragmentManager f13319b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13320c;
    public FragmentTransaction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f13321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f13322f;
    public Fragment g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f13323h;

    public FragmentStatePagerAdapter(FragmentManager fragmentManager, int i2) {
        this.d = null;
        this.f13321e = new ArrayList();
        this.f13322f = new ArrayList();
        this.g = null;
        this.f13319b = fragmentManager;
        this.f13320c = i2;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005b  */
    @Override // androidx.viewpager.widget.PagerAdapter
    public final void a(int i2, Object obj) {
        ArrayList arrayList;
        Fragment.SavedState savedState;
        Fragment fragment = (Fragment) obj;
        FragmentTransaction fragmentTransaction = this.d;
        FragmentManager fragmentManager = this.f13319b;
        if (fragmentTransaction == null) {
            fragmentManager.getClass();
            this.d = new BackStackRecord(fragmentManager);
        }
        while (true) {
            arrayList = this.f13321e;
            if (arrayList.size() > i2) {
                break;
            } else {
                arrayList.add(null);
            }
        }
        if (fragment.isAdded()) {
            FragmentStateManager fragmentStateManager = (FragmentStateManager) fragmentManager.f13266c.f13325b.get(fragment.mWho);
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (fragment2.equals(fragment)) {
                    if (fragment2.mState > -1) {
                        savedState = new Fragment.SavedState(fragmentStateManager.l());
                    } else {
                        savedState = null;
                    }
                }
            }
            fragmentManager.n0(new IllegalStateException(tr.f("Fragment ", fragment, " is not currently in the FragmentManager")));
            throw null;
        }
        savedState = null;
        arrayList.set(i2, savedState);
        this.f13322f.set(i2, null);
        this.d.l(fragment);
        if (fragment.equals(this.g)) {
            this.g = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void b() {
        FragmentTransaction fragmentTransaction = this.d;
        if (fragmentTransaction != null) {
            if (!this.f13323h) {
                try {
                    this.f13323h = true;
                    fragmentTransaction.h();
                    this.f13323h = false;
                } catch (Throwable th) {
                    this.f13323h = false;
                    throw th;
                }
            }
            this.d = null;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object d(ViewPager viewPager, int i2) {
        Fragment.SavedState savedState;
        Fragment fragment;
        ArrayList arrayList = this.f13322f;
        if (arrayList.size() > i2 && (fragment = (Fragment) arrayList.get(i2)) != null) {
            return fragment;
        }
        if (this.d == null) {
            FragmentManager fragmentManager = this.f13319b;
            fragmentManager.getClass();
            this.d = new BackStackRecord(fragmentManager);
        }
        AirportListFragment airportListFragmentJ = j(i2);
        ArrayList arrayList2 = this.f13321e;
        if (arrayList2.size() > i2 && (savedState = (Fragment.SavedState) arrayList2.get(i2)) != null) {
            airportListFragmentJ.setInitialSavedState(savedState);
        }
        while (arrayList.size() <= i2) {
            arrayList.add(null);
        }
        airportListFragmentJ.setMenuVisibility(false);
        int i3 = this.f13320c;
        if (i3 == 0) {
            airportListFragmentJ.setUserVisibleHint(false);
        }
        arrayList.set(i2, airportListFragmentJ);
        this.d.i(viewPager.getId(), airportListFragmentJ, null, 1);
        if (i3 == 1) {
            this.d.o(airportListFragmentJ, Lifecycle.State.STARTED);
        }
        return airportListFragmentJ;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean e(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void f(Parcelable parcelable, ClassLoader classLoader) {
        Fragment fragmentB;
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            ArrayList arrayList = this.f13321e;
            arrayList.clear();
            ArrayList arrayList2 = this.f13322f;
            arrayList2.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    arrayList.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int i2 = Integer.parseInt(str.substring(1));
                    FragmentManager fragmentManager = this.f13319b;
                    fragmentManager.getClass();
                    String string = bundle.getString(str);
                    if (string == null) {
                        fragmentB = null;
                    } else {
                        fragmentB = fragmentManager.f13266c.b(string);
                        if (fragmentB == null) {
                            fragmentManager.n0(new IllegalStateException(fc.i("Fragment no longer exists for key ", str, ": unique id ", string)));
                            throw null;
                        }
                    }
                    if (fragmentB != null) {
                        while (arrayList2.size() <= i2) {
                            arrayList2.add(null);
                        }
                        fragmentB.setMenuVisibility(false);
                        arrayList2.set(i2, fragmentB);
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Parcelable g() {
        Bundle bundle;
        ArrayList arrayList = this.f13321e;
        if (arrayList.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[arrayList.size()];
            arrayList.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.f13322f;
            if (i2 >= arrayList2.size()) {
                return bundle;
            }
            Fragment fragment = (Fragment) arrayList2.get(i2);
            if (fragment != null && fragment.isAdded()) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                String strK = pq0.k(i2, "f");
                FragmentManager fragmentManager = this.f13319b;
                fragmentManager.getClass();
                if (fragment.mFragmentManager != fragmentManager) {
                    fragmentManager.n0(new IllegalStateException(tr.f("Fragment ", fragment, " is not currently in the FragmentManager")));
                    throw null;
                }
                bundle.putString(strK, fragment.mWho);
            }
            i2++;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void h(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.g;
        if (fragment != fragment2) {
            FragmentManager fragmentManager = this.f13319b;
            int i2 = this.f13320c;
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (i2 == 1) {
                    if (this.d == null) {
                        fragmentManager.getClass();
                        this.d = new BackStackRecord(fragmentManager);
                    }
                    this.d.o(this.g, Lifecycle.State.STARTED);
                } else {
                    this.g.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (i2 == 1) {
                if (this.d == null) {
                    fragmentManager.getClass();
                    this.d = new BackStackRecord(fragmentManager);
                }
                this.d.o(fragment, Lifecycle.State.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.g = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void i(ViewPager viewPager) {
        if (viewPager.getId() != -1) {
            return;
        }
        mt.j("ViewPager with adapter ", this, " requires a view id");
    }

    public abstract AirportListFragment j(int i2);

    @Deprecated
    public FragmentStatePagerAdapter(FragmentManager fragmentManager) {
        this(fragmentManager, 0);
    }
}
