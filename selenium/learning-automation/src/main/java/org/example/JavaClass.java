package org.example;
import java.lang.String;

class JavaClass {
    private String stylus;
    private String deviceName;

    public void touchDevice(int x, int y, float strength, Device device) {
        device.touchByStylus(stylus, x, y, strength);
    }

    public boolean checkIPad() {
        if (deviceName.equals("iPad")) return true;
        return false;
    }

    public String getStylus() {
        return stylus;
    }

    interface Device {
        void touchByStylus(String stylus, int x, int y, float strength);
    }
}

class Derived extends JavaClass {
    @Override
    public String getStylus() {
        System.err.println("Derived method applied");
        return super.getStylus();
    }
}